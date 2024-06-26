using {db.models} from '../../../db/models/ index';

@requires : 'authenticated-user'
service EmployeeManagementService {
 @readonly entity Employees   as projection on models.Employees;
 @readonly entity Departments as projection on models.Departments;
}

@requires: 'ROLE_HR_ADMIN'
service EmployeeManagementAdminService {
  // @(restrict: [{ grant: ['CREATE', 'UPDATE', 'DELETE'], to : 'ROLE_HR_ADMIN'}])
  entity Employees   as projection on models.Employees;
  entity Departments as projection on models.Departments;
}