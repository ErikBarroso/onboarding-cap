import '../configuration/module-alias';
import { db } from "@/common/entities/db/models";
import {  Service, Request } from "@sap/cds/apis/services";
import cds from '@sap/cds';

//alterando o comportamento de leitura: alterando texto do cabeçalho

export default (service: Service) => {
  service.after('READ', 'PurchaseOrderHeaders', (results: db.models.PurchaseOrderHeaders[], request: Request) => {
    if (request.user.is('ROLE_DUMMY_ADMIN')) {
      return request.reject(403, "Não autorizado")
    }
    results.forEach(poHeader => poHeader.company = 'XXXXXXXXXXX' )
  })

  service.before('CREATE','PurchaseOrderHeaders', async (request: Request) => {
    const swapi = await cds.connect.to('swapi');
    const person = await swapi.send({
        method: 'GET',
        path: 'people/1',
        headers: { 'Content-Type': 'application/json' },
    });
    const items = [
      {
        material: 'Teste_erik',
        quantity: 10,
        uom: 'PC',
        netPrice: 30,
        center: 'ABCD'
      },
      {
        material: 'Teste_erik2',
        quantity: 5,
        uom: 'KG',
        netPrice: 500,
        center: 'ABCD'
      }
    ]
    request.data.items = items
    request.data.createdBy = person.name;
    request.data.modifiedBy = person.name;
  })
}

// Quando colocamos o arquivo .ts com o mesmo nome do serviço .cds o CAP automaticamente reconhece que aquele arquivo se trata de lógica customizada do serviço