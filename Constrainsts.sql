/* 1. Você está responsável por criar um Banco de Dados com algumas tabelas que vão armazenar 
informações associadas ao aluguel de carros de uma locadora. 

a) O primeiro passo é criar um banco de dados chamado AlugaFacil.*/

CREATE DATABASE Alugafacil
use Alugafacil

CREATE TABLE Dcliente (
	id_cliente INT IDENTITY(1,1),
	nome_cliente VARCHAR(100) not null,
	cnh varchar(30) not null,
	cartao varchar(30) not null
	Constraint Dcliente_id_cliente_PK PRIMARY KEY(id_cliente),
	CONSTRAINT Dcliente_cnh_un UNIQUE (cnh)
)

INSERT INTO Dcliente( nome_cliente, cnh, cartao)
VALUES
	('Maicon Silva', '03214567821','cartao032'),
	('Mario Silva', '36548792144', ' cartao035'),
	( 'Maria de Fatima', '45659871232','cartao789')

SELECT *FROM Dcliente


CREATE TABLE dcarro (
	id_carro  INT IDENTITY (1,1),
	placa VARCHAR(50)  NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	tipo VARCHAR(50) NOT NULL
	Constraint dcarro_id_carro_PK PRIMARY KEY(id_carro),
	Constraint dcarro_placa_un UNIQUE(placa),
	Constraint dcarro_tipo_ck CHECK (tipo in('Hacht', 'SUV','sedan'))

)

INSERT INTO dcarro(placa, modelo, tipo)
VALUES
	( 'klz4082', 'edition limited','Hacht'),
	( 'mvr5487', ' exclusive edition','sedan'),
	( 'swe4789', 'Platinun Edition', 'SUV')
	
	
	SELECT * FROM dcarro




CREATE TABLE Flocacoes (

	id_locacao INT IDENTITY(1,1),
	data_locacao DATEtime2 NOT NULL,
	data_devolucao DATEtime2 NOT NULL,
	id_carro INT NOT NULL,
	id_cliente INT NOT NULL,
	CONSTRAINT id_locacao_PK PRIMARY KEY(id_locacao),
	FOREIGN KEY(id_carro) REFERENCES dcarro(id_carro),
	FOREIGN KEY(id_cliente) REFERENCES dcliente(id_cliente)
)

INSERT INTO Flocacoes(data_locacao, data_devolucao, id_carro, id_cliente)
	VALUES
		('2001/08/20', '2001/08/25', 1, 1),
		('2001/08/30', '2001/08/31', 2, 2),
		('2001/09/01', '2001/09/10',3, 3)
	

		SELECT * FROM Flocacoes
		select * from dcarro
		select * from Dcliente




	




---b) O seu banco de dados deve conter 3 tabelas e a descrição de cada uma delas é mostrada 

/*abaixo: 
Obs: você identificará as restrições das tabelas a partir de suas descrições. 
Tabela 1: Cliente - id_cliente - nome_cliente - cnh - cartao 
A tabela Cliente possui 4 colunas.  
A coluna id_cliente deve ser a chave primária da tabela, além de ser autoincrementada de forma 
automática. 
As colunas nome_cliente, cnh e cartao não podem aceitar valores nulos, ou seja, para todo 
cliente estes campos devem necessariamente ser preenchidos. 
Por fim, a coluna cnh não pode aceitar valores duplicados*/