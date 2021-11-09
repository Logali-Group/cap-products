using com.logali as logali from '../db/schema';
using com.training as training from '../db/training';

service CatalogService {
    entity Products      as projection on logali.materials.Products;
    entity Suppliers     as projection on logali.sales.Suppliers;
    entity Currency      as projection on logali.materials.Currencies;
    entity DimensionUnit as projection on logali.materials.DimensionUnits;
    entity Category      as projection on logali.materials.Categories;
    entity SalesData     as projection on logali.sales.SalesData;
    entity Reviews       as projection on logali.materials.ProductReview;
    entity UnitOfMeasure as projection on logali.materials.UnitOfMeasures;
    entity Months        as projection on logali.sales.Months;
    entity Order         as projection on logali.sales.Orders;
    entity OrderItem     as projection on logali.sales.OrderItems;
}
