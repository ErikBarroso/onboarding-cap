using { managed } from '@sap/cds/common' ;

namespace db;

entity Users: managed {
  key id: UUID;
    email: String(100);
    username : String(100);
    password : String(100);
    firstName : String(100);
    lastName : String(100);
}
