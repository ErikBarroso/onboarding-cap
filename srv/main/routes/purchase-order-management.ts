import { db } from "@/common/entities/db/models";
import {  Service, Request } from "@sap/cds/apis/services";

//alterando o comportamento de leitura: alterando texto do cabeçalho

export default (service: Service) => {
  service.after('READ', 'PurchaseOrderHeaders', (results: db.models.PurchaseOrderHeaders[], request: Request) => {
    results.forEach(poHeader => poHeader.company = 'XXXXXXXXXXX' )
  })
}

// Quando colocamos o arquivo .ts com o mesmo nome do serviço .cds o CAP automaticamente reconhece que aquele arquivo se trata de lógica customizada do serviço