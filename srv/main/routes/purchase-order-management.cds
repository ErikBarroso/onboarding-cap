using {db.models} from '../../../db/models/ index';

//só users logados
@requires: 'authenticated-user' 
service PurchaseOrderManagementService {
  @readonly entity PurchaseOrderHeaders as projection on models.PurchaseOrderHeaders;
  @readonly entity PurchaseOrderItems   as projection on models.PurchaseOrderItems;
}

@requires: 'ROLE_DUMMY_ADMIN'
service PurchaseOrderManagementAdminService {
  entity PurchaseOrderHeaders as projection on models.PurchaseOrderHeaders;
  entity PurchaseOrderItems   as projection on models.PurchaseOrderItems;
}
