import cds, { Request } from '@sap/cds'

export class UserManagementService extends cds.ApplicationService {

  constructor(){
    super()
    this.before('READ', 'Users', (request) => this.beforeReadUsers)
  }

  async beforeReadUsers(request: Request): Promise<void> {
    const users = await cds
    .read('Users')
    .where({ email: 'teste@b2rise.com' })
    .orderBy('firstName', 'email')
    console.log(users);
  }
}