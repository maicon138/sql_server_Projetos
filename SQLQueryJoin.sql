-- Complemente a tabela DimProduct com a informação de ProductCategoryDescription. Utilize o LEFT JOIN  e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.


SELECT * FROM DimProduct
SELECT* FROM DimProductCategory

SELECT
	ProductName AS' Nome do Produto',
	ProductCategoryDescription AS'Descrição Categoria'
	
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubCategoryKey
	LEFT JOIN DimProductCategory
	on DimProductSubcategory.ProductCategoryKey= DimProductCategory.ProductCategoryKey
