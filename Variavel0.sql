SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

DECLARE @varIDSubcategoria INT
DECLARE @varNomeSubcategoria VARCHAR (30)

SET @varNomeSubcategoria = 'lamps'
SET @varIDSubcategoria = (select ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @varNomeSubcategoria)

SELECT
*
FROM
	DimProduct
WHERE ProductSubcategoryKey = @varIDSubcategoria