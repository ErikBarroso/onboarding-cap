using {db} from '../db/books';

service BookManagement {
  entity Books as projection on db.Books order by publishedYear DESC, title ASC;
  entity FilteredBooksPublishedYear as select  from db.Books where publishedYear > 2000;
  entity FilteredBooksPublishedYearBefore1990 as select title, author from db.Books where publishedYear < 1990;
}