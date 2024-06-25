using {managed} from '@sap/cds/common';
using {db.models} from './ index';

namespace db.models;

entity Departments : managed {
  key id             : UUID;
      departmentName : String(40);
      supplierId     : Association to models.Supplier
}