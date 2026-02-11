/*Você seria capaz de confirmar se todas as marcas de produtos possui as opções de todas as 16 cores*/

SELECT * FRoM DimProduct

SELECT
	BrandName AS 'MARCA',
	count(Distinct ColorName) AS 'Qtd Cores'
FROM
	DimProduct
GROUP BY BrandName


SELECT
	DISTINCT ColorName
FROM
	DimProduct
where BrandName ='Contoso'