/* 10. Crie duas CTEs:  
(i) a primeira deve conter as colunas ProductKey, ProductName, ProductSubcategoryKey, 
BrandName e UnitPrice, da tabela DimProduct, mas apenas os produtos da marca Adventure 
Works. Chame essa CTE de CTE_ProdutosAdventureWorks. 
(ii) a segunda deve conter as colunas ProductSubcategoryKey, ProductSubcategoryName, da 
tabela DimProductSubcategory mas apenas para as subcategorias ‘Televisions’ e ‘Monitors’. 
Chame essa CTE de CTE_CategoriaTelevisionsERadio. 
Faça um Join entre essas duas CTEs, e o resultado deve ser uma query contendo todas as colunas 
das duas tabelas. Observe nesse exemplo a diferença entre o LEFT JOIN e o INNER JOIN.8?*/

WITH  CTE_ProdutosAdventureWork1 as(
	SELECT
		ProductKey AS 'ID',
		ProductName AS 'Nome do Produto',
		DimProduct.ProductSubcategoryKey AS 'Produto Subcategoria',
		BrandName as 'Marca',
		UnitPrice as ' Preço Unitario'
	FROM DimProduct
	where BrandName ='Adventure Works'	
), 
	CTE_CategoriaTelevisions AS (
	SELECT
		ProductSubcategoryKey,
		ProductSubcategoryName
	FROM DimProductSubcategory
	where ProductSubcategoryName in('Televisions' , 'Monitors')
)
SELECT 
	CTE_ProdutosAdventureWork1.*,
	CTE_CategoriaTelevisions.ProductSubcategoryName
FROM CTE_ProdutosAdventureWork1
LEFT JOIN CTE_CategoriaTelevisions 
	on CTE_ProdutosAdventureWork1.[Produto Subcategoria]= CTE_CategoriaTelevisions.ProductSubcategoryKey