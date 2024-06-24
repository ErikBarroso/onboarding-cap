import cds, { Request } from '@sap/cds'

export class BookManagementService extends cds.ApplicationService {

  constructor(){
    super()
    this.before('READ', 'Books', (request) => this.beforeReadBooks)
  }

  async beforeReadBooks(request: Request): Promise<void> {
    const books = await cds
    .read('Books')
    .where('publishedYear > 2000')
    .orderBy('publishedYear DESC', 'title ASC')

     const filteredBooksPublishedYearBefore1990 = await cds
    .read('Books')
    .columns('title', 'author')
    .where('publishedYear < 1990')
    .orderBy('publishedYear DESC', 'title ASC')
  }
}