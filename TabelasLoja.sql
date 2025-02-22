create database Loja;

use loja; 

create table Subcategoria(

Cod_subcategoria smallint primary key AUTO_INCREMENT NOT NULL, 
Nome_Subcategoria VARCHAR(60) NOT NULL, 
Data_subcategoria DATE NOT NULL 
); 

CREATE TABLE Categoria(

Cod_Categoria smallint primary KEY AUTO_INCREMENT NOT NULL, 
Cod_Subcategoria smallint not null, 
foreign key (Cod_Subcategoria) references Subcategoria(Cod_Subcategoria), 
Nome_Categoria VARCHAR(60) NOT NULL 
);

CREATE TABLE Produto(

Cod_Produto smallint primary key auto_increment NOT NULL,
Cod_Categoria smallint not null,
Nome_Produto VARCHAR(80) NOT NULL,
Descricao_Produto TEXT,
Preco_Produto FLOAT NOT NULL,
Peso_Produto FLOAT NOT NULL,
foreign key(Cod_Categoria) REFERENCES Categoria(Cod_Categoria)
); 


-- alterar a coluna produto/peso de float para decimal -- 

alter table Categoria 
add OBSERVACAO varchar (255); 

alter  table Produto 
modify column Peso_Produto decimal (6,3); 

alter table Produto
modify column Preco_Produto decimal (6,2); 


-- insertando dados na tabela subcategoria -- 

insert into Subcategoria (Nome_Subcategoria, Data_subcategoria) values ('esportivo', '2025-02-21'), 
('tecnologia', '2025-02-21'); 

delete from subcategoria; 
 

select * from subcategoria; 


