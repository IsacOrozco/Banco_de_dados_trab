create database produtos
create table Fornecedor (codigo int Primary Key not null, nome varchar(50), cnpj varchar(12) not null, Endereco varchar(60));
create table Produto (codigo int Primary Key not null, nome varchar(50), descricao varchar(100));
create table Venda(Num_Nfiscal int Primary Key not null, data date not null, valor_total float);
create table Loja(codigo int primary key not null, nome varchar(50), cnpj varchar(12) not null);
create table Cliente (codigo int Primary Key not null, nome varchar(50), cnpj varchar(12));
create table fornecedor_produto(cod_fornecedor int not null, cod_produto int not null);
create table produto_venda(cod_produto int not null, Num_Nfiscal int not null, preco float not null, quantidade int not null);
alter table fornecedor_produto add constraint cod_fornecedor foreign key (cod_fornecedor)
references Fornecedor (codigo);
alter table fornecedor_produto add constraint cod_produto foreign key (cod_produto)
references Produto (codigo);
alter table produto_venda add constraint Num_Nfiscal foreign key (Num_Nfiscal)
references Venda (Num_Nfiscal);
alter table produto_venda add constraint fk_cod_produto foreign key (cod_produto)
references Produto (codigo);
alter table Venda 
ADD cod_cliente int not null, cod_loja int not null;
alter table Venda add constraint cod_cliente foreign key (cod_cliente)
references cliente (codigo);
alter table Venda add constraint cod_loja foreign key (cod_loja)
references Loja (codigo);