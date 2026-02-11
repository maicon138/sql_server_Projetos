select * from DimStore
-- essa linha seleciona a tabela de lojas
select storename as ' NomeLoja', storedescription as 'DescricaoLoja', status, addressline1 as ' Endereco' from DimStore