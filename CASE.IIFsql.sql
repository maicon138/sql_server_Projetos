--- CASE ADITIVO
--- oS PRODUTOS DA CATEGORIA ' TV AND VIDEO ' TERÃO UM DESCONTO DE 10%
--- SE ALÉM DE SER DA CATEGORIA ' TV AND VIDEO', O PRODUTO FOR DA SUBCATEGORIA 'TELEVISION', RECEBERA MAIS 5% TOTAL 15%

SELECT
	ProductKey,
	ProductName,
	ProductCategoryName,
	ProductSubcategoryName,
	UnitPrice,
	CASE WHEN ProductCategoryName = 'TV and Video'
	THEN 0.10 ELSE 0 END
	+ CASE  WHEN ProductSubcategoryName = 'Televisions'
	THEN 0.05	ELSE 0 END
FROM DimProduct
INNER JOIN DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN DimProductCategory
on DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey