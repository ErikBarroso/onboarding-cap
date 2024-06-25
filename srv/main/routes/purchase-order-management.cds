using {db.models} from '../../../db/models/ index';


service PurchaseOrderManagementService {
  entity PurchaseOrderHeaders as projection on models.PurchaseOrderHeaders;
  entity PurchaseOrderItems   as projection on models.PurchaseOrderItems;
}
