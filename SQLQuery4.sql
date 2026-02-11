--select * from DimEmployee
select
EmployeeKey, 
concat (FirstName,'',LastName) as 'FullName',
Title,
replace(replace(gender, 'm', ' masculino'),'f', ' feminino') as 'Genero',

DepartmentName
From DimEmployee	
WHERE  Gender='M'
and (title = 'Sales Region Manager' or  title = 'Sales State Manager') 
and (DepartmentName='Production' or DepartmentName= 'Marketing')
