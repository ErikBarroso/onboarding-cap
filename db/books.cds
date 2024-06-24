using { managed } from '@sap/cds/common' ;

namespace db;

entity Books: managed {
  key id: UUID;
    title: String(100);
    author : String(100);
    publishedYear : Int16;
}
