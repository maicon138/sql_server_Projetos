---- Faça um agrupamento duplo de quantidade de produtos por BrandName e 
--ProductSubcategoryName. A tabela final deverá ser ordenada de acordo com a coluna 
--BrandName.

SELECT* FROM DimProduct
SELECT* FROM DimProductSubcategory

SELECT
	ProductSubcategoryName AS'Nome Categoria',
	BrandName AS'Marca',
	COUNT(*) AS'Qtd Produtos'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
group by ProductSubcategoryName,BrandName
ORDER BY BrandName 