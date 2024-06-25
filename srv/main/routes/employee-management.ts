import '../configuration/module-alias';
import {  Service, Request } from "@sap/cds/apis/services";
import cds from '@sap/cds';
import { db } from '@/common/entities/db/models';


export default (service: Service) => {
  service.before('CREATE', 'Employees', async(request: Request) => {
    const swapi = await cds.connect.to('swapi');
    const person = await swapi.send({
        method: 'GET',
        path: 'people/2',
        headers: { 'Content-Type': 'application/json' },
    });
    request.data.createdBy = person.name;
    request.data.modifiedBy = person.name;
  })

  service.after('READ', 'Employees', (results: db.models.Employees[], request: Request) => {
     results.forEach(poHeader => poHeader.email = poHeader.email.split('@')[1])
  })
}