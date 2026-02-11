/*1. a) Crie um banco de dados chamado BD_Teste. 
b) Exclua o banco de dados criado no item anterior. 
c) Crie um banco de dados chamado Exercicios.*/


--a 

CREATE TABLE dCliente(
	id_Cliente INT,
	nome_Cliente VARCHAR(100),
	data_de_Nascimento DATETIME
)

INSERT INTO dCliente(id_Cliente, nome_Cliente, data_de_Nascimento)
VALUES

	(1,		'André Martins', '12/2/1989'),
	(2,		'Bárbara Campos', '07/05/1992'),
	(3,		'Carol Freitas',  '23/04/1985'),
	(4,		'Diego Cardoso', '11/10/1994'),
	(5,		'Eduardo Pereira', '09/11/1988'),
	(6,		'Fabiana Silva', '02/09/1989'),
	(7,		'Gustavo Barbosa', '27/06/1993'),
	(8,		'Helen Viana',	'11/02/1990')

insert into dCliente(id_Cliente, nome_Cliente, data_de_Nascimento)
	values
		(9,		'Maicon Gonçalves', '20/08/2001')




CREATE TABLE dGerente(
	id_Gerente INT,
	nome_do_Gerente VARCHAR(100),
	data_de_Contratacao DATETIME,
	Salario FLOAT
)

INSERT INTO dGerente(id_Gerente, nome_do_Gerente, data_de_Contratacao, Salario)
VALUES
	
	(1,		'Lucas Sampaio',	'21/03/2015', 6700),
	(2,		'Mariana Padilha',	'10/01/2011', 9900),
	(3,		'Nathalia Santos',	'03/10/2018', 7200),
	(4,		'Ótavio Costa',		'18/04/2017', 11000)


INSERT INTO dGerente(id_Gerente, nome_do_Gerente, data_de_Contratacao, Salario)
VALUES

	(5,			'Maicon Gonçalves', '20/9/2025', 4800)
	

CREATE TABLE fContratos(
	id_Contrato INT,
	data_de_Assinatura DATETIME,
	id_Cliente INT,
	id_Gerente INT,
	valor_do_Contrato FLOAT

)

INSERT INTO fContratos(id_Contrato, data_de_Assinatura, id_Cliente, id_Gerente, valor_do_Contrato)
VALUES

	(1,			'12/01/2019', 8, 1, 23000),
	(2,			'10/02/2019', 3, 2, 15000),
	(3,			'07/03/2019', 7, 2, 6500),
	(4,			'15/03/2019', 1, 3, 33000),
	(5,			'21/03/2019', 5, 4, 11100),
	(6,			'23/03/2019', 4, 2, 5500),
	(7,			'28/03/2019', 9 ,3, 55000),
	(8,			'04/04/2019', 2 ,1, 31000),
	(9,			'05/04/2019', 10, 4, 3400),
	(10,		'05/04/2019', 6, 2, 9200)

INSERT INTO fContratos(id_Contrato, data_de_Assinatura, id_Cliente, id_Gerente, valor_do_Contrato)
VALUES

	(11,		'20/09/2026', 9, 4, 4800)


SELECT * FROM fContratos

------5. O contrato de ID igual a 4 foi registrado com alguns erros na tabela fContratos. Faça uma 
--alteração na tabela atualizando os seguintes valores: 
--Data_de_Assinatura: 17/03/2019 
--ID_Gerente: 2 
--Valor_do_Contrato: 33500

UPDATE fContratos
SET  data_de_Assinatura = '17/03/2019',
		id_Gerente =2,
		valor_do_Contrato = 33500
	WHERE id_Contrato = 4