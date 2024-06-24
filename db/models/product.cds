using {managed} from '@sap/cds/common';
using {db.models} from './ index';

namespace db.models;

entity Product : managed {
  key id          : UUID;
      name        : String(40);
      description : String(50);
      price       : Decimal(11, 2);
      supplierId  : Association to models.Supplier
}
