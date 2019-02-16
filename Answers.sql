--- Product Category, Day Name Sales Information
SELECT PRODUCTCATEGORY,DAYNAME_TEXT,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY PRODUCTCATEGORY,DAYNAME_TEXT ORDER BY SUM(SALESAMOUNT) DESC;

--- Day Name Sales Information
SELECT DAYNAME_TEXT,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY DAYNAME_TEXT ORDER BY SUM(SALESAMOUNT) DESC;

--- Product Name Sales Information
SELECT ProductName,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY ProductName ORDER BY SUM(SALESAMOUNT) DESC;

--- Product Category/Product Sub Category Sales Information
SELECT PRODUCTCATEGORY,PRODUCTSUBCATEGORYNAME,SUM(SalesAmount),count(1),SUM(QUANTITY) FROM DBO.SalesOrders
GROUP BY PRODUCTCATEGORY,PRODUCTSUBCATEGORYNAME ORDER BY SUM(SALESAMOUNT) DESC;

--- Year, Product Category/Product Sub Category Sales Information
SELECT YEAR(OrderDate_Date),ProductCategory,PRODUCTSUBCATEGORYNAME,SUM(SalesAmount),count(1) FROM DBO.SalesOrders 
GROUP BY YEAR(OrderDate_Date),ProductCategory,PRODUCTSUBCATEGORYNAME ORDER BY SUM(SALESAMOUNT) DESC;

--- Year, Product Category Sales Information
SELECT YEAR(OrderDate_Date),ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders 
GROUP BY YEAR(OrderDate_Date),ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

--- Year wise Sales Information
SELECT YEAR(OrderDate_Date),SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY YEAR(OrderDate_Date) ORDER BY SUM(SALESAMOUNT) DESC;

-- Quarter wise Sales Information
SELECT RIGHT(QuarterNAme,2),SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY RIGHT(QuarterNAme,2) ORDER BY SUM(SALESAMOUNT) DESC; 

--- Year & Quarter Name, Product Category/Product Sub Category Sales Information
SELECT QuarterNAme,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY QuarterNAme ORDER BY SUM(SALESAMOUNT) DESC;

-- Quarter wise Product Category Sales Information
SELECT RIGHT(QuarterNAme,2),ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY RIGHT(QuarterNAme,2),ProductCategory ORDER BY SUM(SALESAMOUNT) DESC; 

-- Year & Quarter Name wise Product Category Sales Information
SELECT QuarterNAme,ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
 GROUP BY QuarterNAme,ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

 -- Country Code wise Sales Information
SELECT CountryCode,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode ORDER BY SUM(SALESAMOUNT) DESC;

-- Country Code wise, Product Category Sales Information
SELECT CountryCode,ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode,ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

-- Country Code wise, Quarter, Product Category Sales Information
SELECT CountryCode,RIGHT(QuarterName,2),ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode,RIGHT(QuarterName,2),ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

-- Country Code wise, Year & Quarter, Product Category Sales Information
SELECT CountryCode,QuarterName,ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode,QuarterName,ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;


-- Country Code wise, month, Product Category Sales Information
SELECT CountryCode,MONTH(OrderDate_Date),ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode,MONTH(OrderDate_Date),ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

-- Country Code wise, month Sales Information
SELECT CountryCode,MONTH(OrderDate_Date),SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY CountryCode,MONTH(OrderDate_Date) ORDER BY SUM(SALESAMOUNT) DESC;

-- Month, Product Category Sales Information
SELECT MONTH(OrderDate_Date),ProductCategory,SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY MONTH(OrderDate_Date),ProductCategory ORDER BY SUM(SALESAMOUNT) DESC;

-- Month Sales Information
SELECT MONTH(OrderDate_Date),SUM(SalesAmount),count(1) FROM DBO.SalesOrders
GROUP BY MONTH(OrderDate_Date) ORDER BY SUM(SALESAMOUNT) DESC;
