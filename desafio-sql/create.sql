    -- Criando o banco de dados ecommerce
    create database mechanical_workshop;
    use mechanical_workshop;

    -- Criando a tabela cidades
    create table cities (
        idCity int auto_increment primary key,
        name varchar(50) not null unique,
        state char(2) not null,
        region enum('Norte', 'Nordeste', 'Sul', 'Sudeste', 'Centro-Oeste') not null
    );
    alter table cities auto_increment=1;

    -- Criando a tabela empregados
    create table employees (
        idEmployee int auto_increment primary key,
        idCity int, -- key
        Fname varchar(25) not null,
        Mname varchar(25) not null,
        Lname varchar(25) not null,
        CPF char(11) not null,
        PhoneNum char(12) not null, -- 00911111111
        Email varchar(45) not null,
        Profession enum('Mecânico', 'Mecânico de Manutenção', 'Mecânico Montador') default 'Mecânico' not null, 
        CEP char(8) not null,
        constraint unique_cpf_employee unique (CPF),
        constraint unique_phone_number_employee unique (PhoneNum),
        constraint unique_email_employee unique (Email),
        constraint fk_employees_cities foreign key (idCity) references cities(idCity)
    );
    alter table employees auto_increment=1;

    -- Criando a tabela Times
    create table teams (
        idTeam int auto_increment primary key,
        idEmployee int, -- key
        constraint fk_employee_teams foreign key (idEmployee) references employees(idEmployee)
    );
    alter table teams auto_increment=1;

    -- Criando a tabela Clientes
    create table clients (
        idClient int auto_increment primary key,
        idCity int, -- key
        Fname varchar(25) not null,
        Mname varchar(25) not null,
        Lname varchar(25) not null,
        CPF char(11) not null,
        CEP char(8) not null,
        AdressReference varchar(45),
        City varchar(45) not null,
        PhoneNum char(12) not null, -- 00911111111
        Email varchar(45) not null,
        constraint unique_cpf_client unique (CPF),
        constraint unique_phone_number_client unique (PhoneNum),
        constraint unique_email_client unique (Email),
        constraint fk_clients_cities foreign key (idCity) references cities(idCity)
    );
    alter table clients auto_increment=1;

    -- Criando a tabela Veículos
    create table vehicles (
        idVehicle int auto_increment primary key,
        idClient int, -- key
        Model varchar(45) not null,
        Color varchar(45) not null,
        Year char(4) not null,
        LicensePlateNumber char(7) not null,
        type varchar(45) not null,
        constraint unique_license_plate_number_vehicles unique (LicensePlateNumber),
        constraint fk_vehicles_clients foreign key (idClient) references clients(idClient)
    );
    alter table vehicles auto_increment=1;

    -- Criando a tabela de fornecedores
    create table suppliers (
        idSupplier int auto_increment primary key,
        idCity int, -- key
        CNPJ char(14) not null,
        CEP char(8) not null,
        AdressReference varchar(45),
        PhoneNum char(16) not null,
        Email varchar(45) not null,
        constraint unique_cnpj_suppliers unique (CNPJ),
        constraint unique_phone_numbers_suppliers unique (PhoneNum),
        constraint unique_email_suppliers unique (Email),
        constraint fk_suppliers_cities foreign key (idCity) references cities(idCity)
    );
    alter table suppliers auto_increment=1;

    -- Criando a tabela de Produtos em estoque
    create table stockProducts (
        idProduct int auto_increment primary key,
        Product varchar(45) not null,
        SalePrice float default 0.0,
        PurchasePrice float default 0.0,
        stockQuantity int unsigned not null default 0,
        expirationDate date not null,
        deliveryTime int default 1 not null
    );
    alter table stockProducts auto_increment=1;

    -- Criando a tabela de Aferição de Produtos
    create table suppliersWithProducts (
        idSupplier int,
        idProduct int,
        constraint pk_SuppliersWithProducts primary key (idSupplier, idProduct),
        constraint fk_SuppliersWithProducts_supplier foreign key (idSupplier)references suppliers(idSupplier),
        constraint fk_SuppliersWithProducts_products foreign key (idProduct)references stockProducts(idProduct)
    );

    -- Criando a tabela de pedidos
    create table orders (
        idOrder int auto_increment primary key,
        idVehicle int, -- key
        idTeam int, -- key
        idClient int, -- key
        Status varchar(45) not null,
        evaluationDate date not null,
        authDate date not null,
        begginDate date not null,
        endDate date not null,
        totalPrice float not null,
        paymentDate date not null,
        constraint fk_orders_vehicles foreign key (idVehicle) references vehicles(idVehicle),
        constraint fk_orders_teams foreign key (idTeam) references teams(idTeam),
        constraint fk_orders_clients foreign key (idClient) references clients(idClient)
    );
    alter table orders auto_increment=1;

    -- Criando a tabela de Gerenciamento de Pedidos de Produtos
    create table orderProductsManagement (
        idProduct int,
        idOrder int, 
        constraint pk_orderProductsManagement primary key (idProduct, idOrder),
        constraint fk_orderProductsManagement_products foreign key (idProduct)references stockProducts(idProduct),
        constraint fk_orderProductsManagement_Orders foreign key (idOrder) references orders(idOrder)
    );

    -- Criando a tabela de Serviço
    create table services (
        idService int auto_increment primary key,
        typeOfService varchar(45) not null,
        description text,
        price float default 0.0,
        duration int not null
    );
    alter table services auto_increment=1;

    -- Criando a tabela de Gerenciamento de Pedidos e serviços
    create table orderServicesManagement (
        idService int, -- key
        idOrder int, -- key
        constraint pk_orderServicesManagement primary key (idService, idOrder),
        constraint fk_orderServicesManagement_Orders foreign key (idOrder) references orders(idOrder),
        constraint fk_orderServicesManagement_Services foreign key (idService) references services(idService)
    );
    alter table orderServicesManagement auto_increment=1;

    -- Criando a tabela pagamentos
    create table payments (
        idPayment int auto_increment primary key,
        idClient int, -- key
        typePayment enum('Boleto', 'Cartão de Crédito', 'Dois Cartões', 'Pix'),
        constraint fk_client_payment foreign key (idClient) references clients(idClient)
    );
    alter table payments auto_increment=1;

    -- Criando a tabela Métodos de Pagamento
    create table paymentMethods (
        idPaymentMethod int auto_increment primary key,
        idPayment int, -- key
        idOrder int, -- key
        constraint fk_payment_methods_payments foreign key (idPayment) references payments(idPayment),
        constraint fk_payment_methods_orders foreign key (idOrder) references orders(idOrder)
    );
    alter table paymentMethods auto_increment=1;