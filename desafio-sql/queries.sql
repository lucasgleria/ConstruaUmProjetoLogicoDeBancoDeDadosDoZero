
        -- Recuperações simples com SELECT Statement;

-- Nomes de cidades
select idCity, name, region from cities;

-- Modelo dos veículos
select idVehicle, model, color, Year, LicensePlateNumber, type from vehicles;

-- Serviços disponíveis
select idService, typeOfService, price, duration from services;

-- Cadastro de Empregado
select concat(Fname,' ' ,Mname, ' ',Lname) as FullName, CPF, PhoneNum, Email, Profession, CEP from employees;

-- Cadastro de Cliente
select concat(Fname,' ' ,Mname, ' ',Lname) as FullName, CPF, PhoneNum, Email, CEP, AdressReference, City from clients;

-- o nome do empregado e sua profissao
select CONCAT(Fname, ' ', Lname) as FullName, Profession from employees;

        -- Filtros com WHERE Statement; 

-- Empregados da cidade de São Paulo
select idEmployee, concat(Fname,' ' ,Mname, ' ',Lname) as Employees_from_SP from employees
    where idCity = 1;

-- Veículos com ano de fabricação em 2022
select Model as Vehicle_made_in_2022, Color, type from vehicles
    where Year = '2022';

-- Serviços com preço acima de R$100
select typeOfService, price from services
    where price > 100.0;

        -- Crie expressões para gerar atributos derivados;

-- Nome completo dos empregados
select CONCAT(Fname, ' ', Mname , ' ', Lname) as FullName from employees;

-- cálculo do preço total de pedidos
select idOrder, totalPrice + (totalPrice * 0.1) as TotalWithTax from orders;

-- calculo do ano de fabricação + 5 anos de veículos
select Model, Year, Year + 5 as FutureYear from vehicles;

        -- Defina ordenações dos dados com ORDER BY;

-- cidades e estados em ordem alfabética crescente
select name, state from cities
    order by name ASC;

-- Serviços em ordem decrescente de preços
select typeOfService, price from services
    order by price DESC;

-- Empregados em Ordem Crescente de Sobrenome e Nome
select Lname, Fname from employees
    order by Lname ASC, Fname ASC;

        -- Condições de filtros aos grupos – HAVING Statement;

-- Cidades com Mais de 3 Empregados:
select idCity, COUNT(idEmployee) as EmployeeCount from employees
    group by idCity
    having EmployeeCount > 1;

-- Serviços com Mais de 60 Minutos de Duração:
select typeOfService, duration from services
    having duration > 60;

-- Clientes com Mais de 1 Pedido:
select idClient, COUNT(idOrder) as OrderCount from orders
    group by idClient
    having OrderCount > 1;

        -- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;

-- Informações de Pedidos e Nomes de Clientes:
select o.idOrder, c.Fname as ClientFirstName, c.Lname as ClientLastName from orders o
    join clients c on o.idClient = c.idClient;

--  Serviços Realizados por Empregados:
select e.Fname as EmployeeFirstName, e.Lname as EmployeeLastName, e.Profession, s.typeOfService from employees e
    join services s on e.Profession = s.typeOfService;

-- Pedidos com Informações de Veículos:
select o.idOrder, v.Model as VehicleModel, v.LicensePlateNumber from orders o
    join vehicles v on o.idVehicle = v.idVehicle;

-- Qual a relação de employee e times
select e.idEmployee, e.Fname, e.Lname, t.idTeam from employees e
    join teams t on e.idEmployee = t.idEmployee;

-- o nome do cliente, a placa do carro, a sua cidade, qual tipo de serviço, pagamento escolhido e empregado responsável
select c.Fname, c.Mname, c.Lname as ClientName, v.LicensePlateNumber, ci.name as City, s.typeOfService, p.typePayment, CONCAT(e.Fname, ' ', e.Lname) as EmployeeResponsable from orders o
    join clients c on o.idClient = c.idClient
    join vehicles v on o.idVehicle = v.idVehicle
    join cities ci on c.idCity = ci.idCity
    join orderServicesManagement osm on o.idOrder = osm.idOrder
    join services s on osm.idService = s.idService
    join payments p on c.idClient = p.idClient
    join teams t on o.idTeam = t.idTeam
    join employees e on t.idEmployee = e.idEmployee;

-- Quantos pedidos foram feitos por cada cliente?
select c.idClient, c.Fname, c.Mname, c.Lname, c.CPF, c.CEP,
    count(o.idOrder) as TotalOrders from clients c
    left join orders o on c.idClient = o.idOrder
    group by c.idClient, c.Fname, c.Mname, c.Lname, c.CPF, c.CEP
    order by c.idClient;