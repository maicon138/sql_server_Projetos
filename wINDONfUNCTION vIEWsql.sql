/* 3. Calcule o % de participação do total de vendas de produtos por marca.  
Ex: A marca A. Datum teve uma quantidade total de vendas de 199.041 de um total de 3.406.089 
de vendas. Isso significa que a da marca A. Datum é 199.041/3.406.089 = 5,84%.*/



SELECT
	*,
		SUM(Quantidade_Vendida) OVER() AS 'Qtd Total Vendida',
		SUM(Quantidade_Vendida) OVER(PARTITION BY Marca) AS 'Qtd Total Vendida por(Marca)',
		FORMAT(1.0*SUM(Quantidade_Vendida) OVER(PARTITION BY Marca)/SUM(Quantidade_Vendida) OVER(), '0.00%') AS '% Participação'
	FROM
		VwProdutos
	Order BY Marca