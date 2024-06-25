import '../configuration/module-alias';
import { db } from "@/common/entities/db/models";
import { service } from '@sap/cds';
import {  Service, Request } from "@sap/cds/apis/services";

//alterando o comportamento de leitura: alterando texto do cabeçalho

export default (service: Service) => {
  service.after('READ', 'PurchaseOrderHeaders', (results: db.models.PurchaseOrderHeaders[], request: Request) => {
    results.forEach(poHeader => poHeader.company = 'XXXXXXXXXXX' )
  })

  service.before('CREATE','PurchaseOrderHeaders', (request: Request) => {
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
  })
}

// Quando colocamos o arquivo .ts com o mesmo nome do serviço .cds o CAP automaticamente reconhece que aquele arquivo se trata de lógica customizada do serviço