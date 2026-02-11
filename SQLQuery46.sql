/* Faça um atabela resumo o total de VocationHours para cada cargo (Title)
voce deve considerar apenas mulheres, dos departamentos de
Production, Marketing, Engineering e Finance, para os funciionarios contratados entre os anos de 1999 e 2000*/


SELECT * FROM DimEmployee


SELECT
	 Title as'Cargo',
	 SUM(VacationHours) AS 'hORAS tOTAIS'

	from
		DimEmployee
WHERE Gender ='f' AND  
DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND hIREdATE bETWEEN '1999-01-01' AND '2000-12-31'
group by Title
