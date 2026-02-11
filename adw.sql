-- Definindo tabelas e colunas a serem usadas no projeto

--Tabelas:

SELECT * FROM FactInternetSales
SELECT * FROM DimProductCategory
SELECT * FROM DimCustomer
SELECT * FROM DimGeography


--Colunas

-- SalesOrderNumber      (FactInternetSales)
-- OrderDate             (FactInternetSales)
-- EnglishProductCategoryName    (DimProductCategory)
-- CustomerKey                (DimCustomer)
-- FirstName, ' ', LastName   (DimCustomer)
-- Gender                     "DimCustomer"
-- EnglishCountryRegionName    (DimGeography)
-- OrderQuantity               ( FactInternetSales)
-- SalesAmount                 (FactInternetSales)
-- TotalProductCost            ( FactInternetSales)
-- SalesAmount - TotalProductCost (FactInternetSales)


-- Criando a View Resultados

CREATE OR ALTER VIEW Resultados_ADW AS

SELECT
	fis.SalesOrderNumber AS 'N PEDIDO',
	fis.OrderDate AS 'DATA PEDIDO' ,
	dpc.EnglishProductCategoryName AS 'Categoria Produto',
	fis.CustomerKey AS	'ID-CLIENTE',
	dc.FirstName+ ' '+ LastName AS'NOME CLIENTE',
	replace(replace(Gender, 'M', 'Masculino'),'F', 'Feminino') AS 'GENERO',
	dg.EnglishCountryRegionName AS 'PAIS',
	fis.OrderQuantity AS 'Qtd Vendida',
	fis.SalesAmount AS 'Receita Venda',
	fis.TotalProductCost AS 'Custo Venda',
	fis.SalesAmount - TotalProductCost AS 'Lucro Venda'
FROM FactInternetSales fis
INNER JOIN DimProduct dp on fis.ProductKey = dp.ProductKey
	INNER JOIN DimProductSubcategory dps on dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
		INNER JOIN DimProductCategory dpc on dps.ProductCategoryKey = dpc. ProductCategoryKey
			INNER JOIN DimCustomer dc on fis.CustomerKey = dc.CustomerKey
				INNER JOIN DimGeography dg on dc.GeographyKey = dg. GeographyKey


	
	SELECT * FROM Resultados_ADW


	


