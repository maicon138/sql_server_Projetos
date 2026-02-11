-- A tabela abaixo é resultado de um Join entre a tabela FactSales e as tabelas: DimChannel, 
--DimStore e DimProduct. 
--Recrie esta consulta e classifique em ordem decrescente de acordo com SalesAmount.
--select * from DimStore
--select * from DimProduct
--select * from DimChannel
--select * from FactSales

SELECT TOP(100) 
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM
	FactSales
INNER JOIN DimChannel
on FactSales.ChannelKey = DimChannel.ChannelKey
INNER JOIN DimStore 
on DimStore.Storekey = FactSales.Storekey
INNER JOIN DimProduct
ON DimProduct.ProductKey = FactSales.ProductKey
ORDER BY SalesAmount desc

