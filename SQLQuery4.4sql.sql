/* Descubra quais foram os top 3 produtos mais comprados pelo clciente da letra (a). ID  do cliente = 19037*/


SELECT TOP(3)
	ProductKey AS ' ID ddo Produto',
	SUM(SalesQuantity) AS 'ToTAL'
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
Group BY ProductKey
Order By SUM(SalesQuantity) Desc
