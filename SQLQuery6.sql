select
BrandName,
count(ProductKey) as 'Qtd Produtos'
from DimProduct
group by BrandName