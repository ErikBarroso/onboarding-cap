using {managed} from '@sap/cds/common';

namespace db.models;

entity Employees : managed {
  key id          : UUID;
      name        : String(40);
      email       : String(50);
}