using {db} from '../db/users';

service UserManagement {
  entity Users as projection on db.Users order by firstName DESC, email ASC;
  entity TestUser as select from db.Users where email = 'teste@b2rise.com';
}