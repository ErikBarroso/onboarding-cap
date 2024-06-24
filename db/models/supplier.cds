using {managed} from '@sap/cds/common';

namespace db.models;

entity Supplier: managed {
  key id: UUID;
      name: String(40);
      location: String(50);
}
