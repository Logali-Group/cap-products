using com.logali as logali from '../db/schema';

service CatalogService {
    entity Products     as projection on logali.Products;
    entity Suppliers    as projection on logali.Suppliers;
    //entity Car          as projection on logali.Car;
}
