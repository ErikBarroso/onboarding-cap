using {db} from '../db/users';

service UserManagement {
  entity Users as projection on db.Users order by firstName DESC, email ASC;
  entity TestUser as select email, username, firstName, lastName from db.Users where email = 'teste@b2rise.com';
}