USE ECommerce
 
 -- Simgular, comecando com letra maiuscula.
CREATE TABLE Cliente (
--PRIMARY KEY  - coluna qie identifica os clientes
--IDENTITY - gerada automaticamente
IdCliente INT PRIMARY KEY IDENTITY,
NomeCompleto VARCHAR(150),
Email VARCHAR(100),
Telefone VARCHAR(255),
Endereco VARCHAR(255),
DataCadastro DATE,
)

CREATE TABLE Pedido (
IdPedido INT PRIMARY KEY IDENTITY,
DataPedido DATE,
Status VARCHAR (20),
ValorTotal DECIMAL(18, 6),
IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente)

)

CREATE TABLE Pagamento (
IdPagamento INT PRIMARY KEY IDENTITY,
IdPedido INT FOREIGN KEY REFERENCES Pedido(IdPedido),
FormaPagamento VARCHAR(30),
Status VARCHAR(30),
Data DATETIME
)

CREATE TABLE Produto (
Idproduto INT PRIMARY KEY IDENTITY,
Nome VARCHAR (50),
Descricao VARCHAR (255),
Preco DECIMAL (18, 6),
EstoqueDisponivel INT,
Categoria VARCHAR (100),
Imagem VARCHAR (255)
)

CREATE TABLE ItensPedido (
IdItemPedido INT PRIMARY KEY IDENTITY,
IdPedido INT FOREIGN KEY REFERENCES Pedido(IdPedido),
IdProduto INT FOREIGN KEY REFERENCES Produto(IdProduto),
Quantidade INT
)


/*
DROP TABLE ItensPedido;
DROP TABLE Pagamento;
DROP TABLE Pedido;
DROP TABLE Produto;
DROP TABLE Cliente;


