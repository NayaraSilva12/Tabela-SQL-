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
foreign key (Cod_Subcategoria) references Subcategoria(Cod_Subcategoria) on delete cascade, 
Nome_Categoria VARCHAR(60) NOT NULL 

);

CREATE TABLE Produto(

Cod_Produto smallint primary key auto_increment NOT NULL,
Cod_Categoria smallint not null,
Nome_Produto VARCHAR(80) NOT NULL,
Descricao_Produto TEXT,
Preco_Produto FLOAT NOT NULL,
Peso_Produto FLOAT NOT NULL,
foreign key(Cod_Categoria) REFERENCES Categoria(Cod_Categoria) on delete cascade 
); 


-- alterar a coluna produto/peso de float para decimal -- 

alter table Categoria 
add OBSERVACAO varchar (255); 

alter  table Produto 
modify column Peso_Produto decimal (6,3); 

alter table Produto
modify column Preco_Produto decimal (6,2); 


-- insertando dados na tabela subcategoria -- 

insert into Subcategoria (Nome_Subcategoria, Data_subcategoria) values 
('Esportivo', '2025-02-21'), 
('Tecnologia', '2025-02-21'),
('Audio e Video', '2013-12-08'),
('Eletrodomestico', '2012-12-*08'),
('Papelaria', '2012-12-08')
; 

insert into  Categoria (Cod_Subcategoria, Nome_Categoria) values 
(1, "Esportivo"),
(2, "Tecnologia"),
(3, "Audio e Video"),
(4, "Eletrodomesticos"),
(5, "Papelaria")
;

insert into produto (Cod_Categoria, Nome_Produto, Descricao_Produto, Preco_Produto, Peso_Produto) values
(1,'Camiseta do gremio', 'camiseta com listra nas cores azul, preto e branco', 89.95,15),
(2, 'Notebook compag presario', 'computador portatil pentium', 3300,3.5),
(3, 'Monitor Sqamsung', 'Monitor colorido de 14 polegadas', 450, 8.3),
(4, 'Cafeteira', 'Cafeterira 14 xicarasas arno', 55.50, 5.4),
(5, 'Caneta Bic', 'Pacote com três unidades', 4.50, 0.3); 



select * from produto; 
 
 -- alterando valores -- 
 
 UPDATE Produto SET Preco_Produto = 4.0 where Cod_Produto = 5;  -- Caneta BIC --
 
UPDATE Produto SET Preco_Produto = 60.0 where Cod_Produto = 4; -- cafeteira -- 

UPDATE Produto SET Preco_Produto = 399.99 where Cod_Produto = 3; -- monitor samsung -- 

UPDATE Produto SET Preco_Produto = 2900.0 where Cod_Produto = 2;  -- notebook --
  
UPDATE Produto SET Preco_Produto = 80.0 where Cod_Produto = 1;  -- camiseta --


select * from produto; 

-- atualização do peso -- 

UPDATE produto SET Peso_Produto = 0.15 where Cod_Produto = 1;

UPDATE produto SET Peso_Produto = 4.0 where Cod_Produto = 2;

UPDATE produto SET Peso_Produto = 8.0 where Cod_Produto = 3;

UPDATE produto SET Peso_Produto = 6.5 where Cod_Produto = 4;

UPDATE produto SET Peso_Produto = 0.29 where Cod_Produto = 5;


  
