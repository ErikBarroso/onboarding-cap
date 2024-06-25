using {db.models} from '../../../db/models/ index';

//só users logados
@requires: 'authenticated-user' 
service PurchaseOrderManagementService {
  // readonly = permitir o acesso de somente leitura, bloqueando todo o restante do CRUD:
  @readonly entity PurchaseOrderHeaders as projection on models.PurchaseOrderHeaders;
  //só a role admin pode fazer CRUD e eu posso remover qualquer método HTTP
  // @(restrict: [{ grant: ['READ', 'CREATE', 'UPDATE', 'DELETE'], to: 'ROLE_DUMMY_ADMIN'}])
   entity PurchaseOrderItems   as projection on models.PurchaseOrderItems;
}
