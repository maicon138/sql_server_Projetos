-- DATEADD : Adiciona ou subtrai uma determinada quantidade de dias, meses ou anos a uma data.
-- DATEDIFF: Calcula a diferença entre duas datas.

DECLARE
	@vardata1 DATETIME = '20/08/2001',
	@vardata2 DATETIME = '17/07/1974',
	@vardata3 DATETIME = '18/04/1975'

SELECT
	DATEADD(QUARTER,3,@vardata2)


-- DATEDIFF
SELECT
	DATEDIFF(YEAR,@vardata2,@vardata3) AS ' Diferença de meses'