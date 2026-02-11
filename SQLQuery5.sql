-- Quantos Produtos Vendemos na Empresa?
select count(*)
from DimProduct


-- Qual o Valor do Produto mais Caro?
select
max(UnitPrice)
from DimProduct


-- Qual a Média dos Preços dos Produtos?
select
round(avg(UnitPrice),2)
from DimProduct


-- Quantas Marcas Temos na Empresa?
select
distinct(BrandName)
from DimProduct