-- Funções de Janela
-- Funções de Classificação: ROW_NUMBER, RANK, DENSE_RANK, NTILE

SELECT
	ID_Loja,
	Nome_Loja,
	Regiao,
	Qtd_Vendida,
	ROW_NUMBER() OVER(ORDER BY Qtd_Vendida DESC) AS 'Rownumber',
	RANK () OVER(ORDER BY Qtd_Vendida DESC) AS 'RANK'
from Lojas