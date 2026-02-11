/* Exemplo INNER JOIN, LEFT JOIN, RIGHT JOIN*/


SELECT ProductKey, ProductName, ProductSubcategoryKey FROM DimProduct
SELECT ProductSubcategoryKey, ProductSubcategoryName FROM DimProductSubcategory

SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM
	DimProduct
inner JOIN DimProductSubcategory
ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
