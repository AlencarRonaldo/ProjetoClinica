-- DML - INSERIR DADOS/ ALTERAR DADOS
-- INSERT INTO  - INSERIR EM ALFUM LUGAR
USE Ecommerce

INSERT INTO Produto (Nome, Descricao, Preco, EstoqueDisponivel, Categoria, Imagem)
VALUES
('Mouse', 'Mouse Logitech', 99.90, 50,'Informatica', ''),
('Teclado', 'Teclado Dell', 50.90, 30, 'Informatica', '')

INSERT INTO Cliente (NomeCompleto, Email, Telefone, Endereco,DataCadastro)
VALUES
('Ronaldo Carvalho', 'ronaldoalencar2009@hotmail.com', '956534963', 'Rua da Bica, 118 SBC-SP', '05/04/2025'),
('Rones Carvalho', 'rones.carvalho@hotmail.com', '956534963', 'Rua da Bica, 118 SBC-SP', '03/12/2025')

INSERT INTO Pedido (IdCliente, DataPedido, Status, ValorTotal)
VALUES
(2, '06/05/2023', 'Processando', 3200.99),
(3, '10/05/2023', 'Concluido', 450.90)

INSERT INTO Pagamento (IdPedido, FormaPagamento, Status, Data)
VALUES 
(1, 'Cartao de Credito', 'Aprovado', '08/05/2023 12:30:00'),
(2, 'Boleto', 'Aprovado', '18/05/2023 16:30:00')

INSERT INTO ItensPedido(IdPedido, IdProduto, Quantidade)
VALUES
(2, 1, 2),
(2, 2, 1),
(3, 1, 1)

DELETE FROM Cliente WHERE IdCliente = '3';