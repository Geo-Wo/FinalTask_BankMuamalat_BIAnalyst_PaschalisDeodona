select
  `final-project-pbi-448101.Task_5.Orders`.Date as order_date,
  `final-project-pbi-448101.Task_5.ProductCategory`.CategoryName as category_name,
  `final-project-pbi-448101.Task_5.Products`.ProdName as product_name,
  `final-project-pbi-448101.Task_5.Products`.Price as product_price,
  `final-project-pbi-448101.Task_5.Orders`.Quantity as product_qty,
  (`final-project-pbi-448101.Task_5.Products`.Price*`final-project-pbi-448101.Task_5.Orders`.Quantity) as total_sales,
  `final-project-pbi-448101.Task_5.Customers`.CustomerEmail as cust_email,
  `final-project-pbi-448101.Task_5.Customers`.CustomerCity as cust_city
from `final-project-pbi-448101.Task_5.Customers`
inner join 
  `final-project-pbi-448101.Task_5.Orders` on `final-project-pbi-448101.Task_5.Customers`.CustomerID = `final-project-pbi-448101.Task_5.Orders`.CustomerID
inner join
  `final-project-pbi-448101.Task_5.Products` on `final-project-pbi-448101.Task_5.Orders`.ProdNumber = `final-project-pbi-448101.Task_5.Products`.ProdNumber
inner join 
  `final-project-pbi-448101.Task_5.ProductCategory` on `final-project-pbi-448101.Task_5.Products`.Category = `final-project-pbi-448101.Task_5.ProductCategory`.CategoryID
order by order_date