/* Utilize um Loop WHILE para criar uma tabela chamada Calendario, contendo uma columa que comce com a data 01/01/2021 e vá até 31/12/2021*/


CREATE TABLE Calendario (
	Data DATE
)


DECLARE @DataInicio DATE = '01/01/2021'
DECLARE @DataFinal DATE = '31/12/2021'


WHILE @DataInicio <= @DataFinal
BEGIN

		INSERT INTO Calendario (DATA) VALUES (@DataInicio)
		SET @DataInicio =DATEADD(DAY, 1,@DataInicio)

END

SELECT * FROM Calendario