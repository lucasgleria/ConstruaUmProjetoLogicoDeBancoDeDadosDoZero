use mechanical_workshop;

-- Inserindo informações na tabela Cidades
insert into cities(name, state, region)
values
    ('São Paulo', 'SP', 'Sudeste'),
    ('Rio de Janeiro', 'RJ', 'Sudeste'),
    ('Belo Horizonte', 'MG', 'Sudeste'),
    ('Porto Alegre', 'RS', 'Sul'),
    ('Salvador', 'BA', 'Nordeste'),
    ('Brasília', 'DF', 'Centro-Oeste'),
    ('Fortaleza', 'CE', 'Nordeste'),
    ('Curitiba', 'PR', 'Sul'),
    ('Recife', 'PE', 'Nordeste'),
    ('Manaus', 'AM', 'Norte'),
    ('Goiânia', 'GO', 'Centro-Oeste'),
    ('Natal', 'RN', 'Nordeste'),
    ('Florianópolis', 'SC', 'Sul'),
    ('João Pessoa', 'PB', 'Nordeste');

-- Inserindo informações na tabela Empregados
insert into employees(idCity, Fname, Mname, Lname, CPF, PhoneNum, Email, Profession, CEP)
values
    (1, 'João', 'Silva', 'Santos', '12345678901', '01122223333', 'joao@email.com', 'Mecânico', '12345678'),
    (1, 'Pedro', 'Santos', 'Silva', '98765432102', '02133334444', 'pedro@email.com', 'Mecânico de Manutenção', '23456789'),
    (2, 'Ana', 'Souza', 'Oliveira', '45678901234', '03155556666', 'ana@email.com', 'Mecânico Montador', '34567890'),
    (3, 'Lucas', 'Ferreira', 'Costa', '78901234567', '05177778888', 'lucas@email.com', 'Mecânico', '45678901'),
    (4, 'Mariana', 'Alves', 'Pereira', '23456789012', '04188889999', 'mariana@email.com', 'Mecânico de Manutenção', '56789012'),
    (1, 'Carla', 'Rocha', 'Nunes', '67890123456', '05166667777', 'carla@email.com', 'Mecânico', '67890123'),
    (2, 'Rafael', 'Gomes', 'Pereira', '34567890123', '03122223333', 'rafael@email.com', 'Mecânico Montador', '78901234'),
    (3, 'Fernanda', 'Lima', 'Silva', '89012345678', '06177778888', 'fernanda@email.com', 'Mecânico', '89012345'),
    (4, 'Gustavo', 'Martins', 'Costa', '56789012345', '02199998888', 'gustavo@email.com', 'Mecânico de Manutenção', '90123456'),
    (5, 'Julia', 'Oliveira', 'Sousa', '45678901230', '08111112222', 'julia@email.com', 'Mecânico Montador', '01234567'),
    (6, 'André', 'Pereira', 'Machado', '12345678908', '04144445555', 'andre@email.com', 'Mecânico', '12345670');

-- Inserindo informações na tabela Times
insert into teams(idEmployee)
values
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10),
    (11);

-- Inserindo informações na tabela Clientes
insert into clients(idCity, Fname, Mname, Lname, CPF, CEP, AdressReference, City, PhoneNum, Email)
values
    (4, 'Maria', 'Ferreira', 'Souza', '98765432109', '87654321', 'Próximo à praça', 'Porto Alegre', '04455556666', 'maria@email.com'),
    (6, 'Rafael', 'Mendes', 'Pereira', '65432109876', '70123456', 'Perto do parque', 'Brasília', '03122223333', 'rafael@email.com'),
    (5, 'Juliana', 'Nunes', 'Almeida', '89012345678', '50101010', 'Rua das Palmeiras', 'Salvador', '04177776666', 'juliana@email.com'),
    (7, 'Eduardo', 'Rocha', 'Gomes', '56789012345', '60101010', 'Avenida Central', 'Fortaleza', '08123456789', 'eduardo@email.com'),
    (1, 'Carolina', 'Silva', 'Santos', '23456789012', '12345678', 'Próximo à escola', 'São Paulo', '02133334444', 'carolina@email.com'),
    (3, 'Luciana', 'Alves', 'Oliveira', '45678901230', '87654321', 'Condomínio Verde', 'Belo Horizonte', '05155556666', 'luciana@email.com'),
    (2, 'Fernando', 'Gomes', 'Machado', '89012345670', '76543210', 'Rua das Flores', 'Rio de Janeiro', '03177778888', 'fernando@email.com'),
    (4, 'Gustavo', 'Ferreira', 'Sousa', '45678901234', '90123456', 'Perto do shopping', 'Porto Alegre', '08199998888', 'gustavo@email.com'),
    (5, 'Larissa', 'Nunes', 'Almeida', '23456789013', '50101010', 'Rua do Parque', 'Salvador', '04111112222', 'larissa@email.com'),
    (7, 'Cristina', 'Rocha', 'Gomes', '67890123456', '60101010', 'Avenida Central', 'Fortaleza', '05123456789', 'cristina@email.com');

-- Inserindo informações na tabela Veículos
insert into vehicles(idClient, Model, Color, Year, LicensePlateNumber, type)
values
    (1, 'Toyota Corolla', 'Silver', '2022', 'ABC1234', 'Sedan'),
    (2, 'Ford Focus', 'Blue', '2021', 'XYZ5678', 'Hatchback'),
    (3, 'VW Gol', 'Red', '2023', 'DEF4321', 'Hatchback'),
    (4, 'Honda Civic', 'Black', '2022', 'MNO8765', 'Sedan'),
    (1, 'Chevrolet Onix', 'White', '2023', 'PQR5678', 'Hatchback'),
    (2, 'Nissan Sentra', 'Gray', '2022', 'STU9012', 'Sedan'),
    (3, 'Hyundai HB20', 'Silver', '2023', 'VWX3456', 'Hatchback'),
    (4, 'Renault Kwid', 'Orange', '2021', 'YZA7890', 'Compact'),
    (5, 'Fiat Strada', 'Green', '2022', 'BCD2345', 'Pickup'),
    (6, 'Jeep Renegade', 'Black', '2023', 'EFG6789', 'SUV');

-- Inserindo informações na tabela Fornecedores
insert into suppliers(idCity, CNPJ, CEP, AdressReference, PhoneNum, Email)
values
    (1, '12345678901234', '76543210', 'Rua das Indústrias', '01199998888', 'fornecedor@email.com'),
    (2, '98765432109876', '76543210', 'Avenida Industrial', '02177776666', 'fornecedor2@email.com'),
    (5, '54321098765432', '50101010', 'Rua das Peças', '08123456789', 'fornecedor3@email.com'),
    (6, '98765432101234', '60101010', 'Avenida dos Componentes', '07123456789', 'fornecedor4@email.com'),
    (3, '78901234567890', '34567890', 'Rua dos Materiais', '04155556666', 'fornecedor5@email.com'),
    (4, '01234567890123', '90123456', 'Avenida dos Produtos', '06188889999', 'fornecedor6@email.com'),
    (5, '23456789012345', '50101010', 'Rua da Indústria', '08111112222', 'fornecedor7@email.com'),
    (6, '34567890123456', '60101010', 'Avenida dos Componentes', '07144445555', 'fornecedor8@email.com'),
    (7, '45678901234567', '60101010', 'Rua das Peças', '03122223333', 'fornecedor9@email.com'),
    (1, '56789012345678', '76543210', 'Avenida Industrial', '08177778888', 'fornecedor10@email.com');

-- Inserindo informações na tabela Produtos em Estoque
insert into stockProducts(Product, SalePrice, PurchasePrice, stockQuantity, expirationDate, deliveryTime)
values
    ('Óleo de Motor', 25.0, 15.0, 100, '2023-12-31', 3),
    ('Filtro de Ar', 15.0, 10.0, 200, '2024-06-30', 5),
    ('Pastilhas de Freio', 80.0, 50.0, 50, '2024-08-15', 4),
    ('Bateria 60Ah', 250.0, 180.0, 30, '2025-03-20', 7),
    ('Amortecedor Dianteiro', 150.0, 120.0, 20, '2024-10-01', 5),
    ('Lâmpada H7', 10.0, 6.0, 100, '2025-06-15', 2),
    ('Correia Dentada', 40.0, 25.0, 30, '2024-09-10', 4),
    ('Sensor de Oxigênio', 60.0, 40.0, 25, '2024-12-31', 3),
    ('Radiador de Água', 180.0, 150.0, 15, '2025-05-20', 6),
    ('Embreagem Completa', 280.0, 220.0, 10, '2024-11-15', 5);

-- Inserindo informações na tabela Aferição de Produtos
insert into suppliersWithProducts(idSupplier, idProduct)
values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserindo informações na tabela Pedidos
insert into orders(idVehicle, idTeam, idClient, Status, evaluationDate, authDate, begginDate, endDate, totalPrice, paymentDate)
values
    (1, 1, 1, 'Em Progresso', '2023-08-25', '2023-08-26', '2023-08-27', '2023-08-28', 150.0, '2023-08-29'),
    (2, 1, 2, 'Concluído', '2023-08-25', '2023-08-26', '2023-08-27', '2023-08-30', 180.0, '2023-08-31'),
    (3, 2, 3, 'Aguardando Peças', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-01', 250.0, '2023-09-02'),
    (4, 3, 4, 'Concluído', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-03', 350.0, '2023-09-04'),
    (1, 2, 2, 'Em Progresso', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-05', 120.0, '2023-09-06'),
    (3, 1, 3, 'Concluído', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-07', 280.0, '2023-09-08'),
    (2, 3, 4, 'Em Progresso', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-09', 200.0, '2023-09-10'),
    (4, 2, 1, 'Aguardando Peças', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-11', 300.0, '2023-09-12'),
    (2, 1, 3, 'Concluído', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-13', 180.0, '2023-09-14'),
    (1, 3, 4, 'Em Progresso', '2023-08-25', '2023-08-26', '2023-08-27', '2023-09-15', 130.0, '2023-09-16');

-- Inserindo informações na tabela Gerenciamento de Pedidos de Produtos
insert into orderProductsManagement(idProduct, idOrder)
values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserindo informações na tabela Serviços
insert into services(typeOfService, description, price, duration)
values
    ('Troca de Óleo', 'Troca de óleo e filtro', 50.0, 60),
    ('Troca de Pneus', 'Substituição de todos os pneus', 120.0, 90),
    ('Troca de Pastilhas de Freio', 'Substituição das pastilhas de freio', 100.0, 75),
    ('Troca de Bateria', 'Troca da bateria do veículo', 200.0, 120),
    ('Alinhamento e Balanceamento', 'Alinhamento das rodas e balanceamento dos pneus', 80.0, 45),
    ('Troca de Correia Dentada', 'Substituição da correia dentada', 90.0, 75),
    ('Revisão Completa', 'Revisão geral do veículo', 300.0, 180),
    ('Troca de Amortecedores', 'Substituição dos amortecedores', 150.0, 90),
    ('Troca de Lâmpadas', 'Substituição de lâmpadas queimadas', 20.0, 30),
    ('Higienização do Ar Condicionado', 'Limpeza e higienização do sistema de ar condicionado', 70.0, 60);

-- Inserindo informações na tabela Gerenciamento de Pedidos e Serviços
insert into orderServicesManagement(idService, idOrder)
values
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6),
    (6, 7),
    (7, 8),
    (8, 9),
    (9, 10);

-- Inserindo informações na tabela Pagamentos
insert into payments(idClient, typePayment)
values
    (1, 'Cartão de Crédito'),
    (2, 'Boleto'),
    (3, 'Pix'),
    (4, 'Dois Cartões'),
    (2, 'Cartão de Crédito'),
    (3, 'Boleto'),
    (1, 'Pix'),
    (4, 'Dois Cartões'),
    (3, 'Cartão de Crédito'),
    (1, 'Boleto');

-- Inserindo informações na tabela Métodos de Pagamento
insert into paymentMethods(idPayment, idOrder)
values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);