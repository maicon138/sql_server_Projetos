/* Utilizando uma variável em uma consulta (EXEMPLOS)
EXEMPLO 1) Aplique o Desconto de 10% em todos os preços dos produtos . sua consulta final deve conter colunas ProductKey , ProductName,UnitPrice e Preço com Desconto.
*/

DECLARE @vardesconto  FLOAT
SET @vardesconto = 0.50

SELECT
	ProductKey AS'ID',
	ProductName AS'Nome do Produto',
	UnitPrice AS'Preço Unitátio',
	UnitPrice *(1 - @vardesconto) AS 'Preço com Desconto'
FROM
	DimProduct

