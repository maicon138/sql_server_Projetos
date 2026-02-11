SELECT * FROM DimEmployee


SELECT
	
	COUNT(DepartmentName) AS' Qtd Total Departamento',
	DepartmentName AS 'Nome Departamento'

from
	DimEmployee
WHERE Status ='Current'
GROUP BY DepartmentName


/* Faça uma tabela resumo mostrando a quantidade total de funcionarios de acordo com o departamento ( DepartmentName). Importante voce devera considerar apenas os funcionarios ativos/*