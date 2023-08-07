create database eco_revive;
use eco_revive;

create table users( /* Criação da tabela usuário*/
	user_id int not null primary key auto_increment,
    user_name varchar(99) not null,						
    user_email varchar(99) not null unique,
    user_password varchar(99) not null,
    user_phone varchar(99) unique,
    user_addrress_cep varchar(255), 
	user_addrress_road varchar(255), 
	user_addrress_number varchar(255), 
	user_addrress_district varchar(255), 
	user_addrress_city varchar(255), 
	user_addrress_state varchar(255),
	user_addrress_complement varchar(255)
);

create table company( /*criação da tabela empresas */
	comp_id int not null primary key auto_increment,
    comp_name varchar(99) not null,
    comp_cnpj varchar(99) unique not null,
    comp_cnae varchar(99) not null,
    comp_email varchar(99) not null,
    comp_password varchar(99) not null,
    comp_phone varchar(99),
    comp_type varchar(99) not null,
    comp_addrress_cep varchar(255), 
	comp_addrress_road varchar(255), 
	comp_addrress_number varchar(255), 
	comp_addrress_district varchar(255), 
	comp_addrress_city varchar(255), 
	comp_addrress_state varchar(255), 
	comp_addrress_complement varchar(255)
);  


create table discardd ( /* criação da tabela para agendar descarte*/
	disc_id int not null primary key auto_increment,
    disc_item varchar(255), 
	disc_address varchar(255), 
	disc_date datetime, 
	disc_responsible_name varchar(255), 
	disc_status varchar(255), 
	id_user int
);


SELECT * FROM eco_revive.users;
SELECT * FROM eco_revive.companies;
SELECT * FROM eco_revive.discardds;






