/*a) Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O 
resultado esperado da consulta deverá ser o total de produtos por marca. Chame essa 
View de vw_6a.*/

CREATE VIEW vW_6a AS
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Total de Produtos'
FROM
	DimProduct
group by BrandName






--b) ) Altere a View criada no exercício anterior, adicionando o peso total por marca. Atenção: 
--sua View final deverá ter então 3 colunas: Nome da Marca, Total de Produtos e Peso Total. 
go
ALTER VIEW vW_6a AS

SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Total de Produtos',
	SUM(Weight) AS'Peso Total'
FROM
	DimProduct
group by BrandName



--c) ) Exclua a View vw_6a.

--DROP VIEW vW_6a
	











