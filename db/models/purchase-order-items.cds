using {managed} from '@sap/cds/common';
using {db.models} from './ index';

namespace db.models;

entity PurchaseOrderItems : managed {
  key id       : UUID;
  key header   : Association to models.PurchaseOrderHeaders;
      material : String(18);
      quantity : Decimal(13, 3);
      uom      : String(3);
      netPrice : Decimal(11, 2);
      center   : String(4);
      product  : Association to models.Product
}
