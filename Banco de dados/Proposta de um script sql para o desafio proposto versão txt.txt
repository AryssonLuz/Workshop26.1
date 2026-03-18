CREATE TABLE clientes(
id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email FLOAT NOT NULL,
cidade VARCHAR(50) 
);

CREATE TABLE pedidos(
id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
produto VARCHAR(50) NOT NULL,
valor FLOAT NOT NULL,
data_pedido DATE
);

INSERT INTO 
clientes (nome, email, cidade)
VALUES ('João Silva', 'joao@gmail.com', 'Recife'),
('Maria Souza', 'maria@gmail.com', 'João Pessoa'),
('Carlos Lima', 'carlos@gmail.com', 'Natal'),
('Ana Costa', 'ana@gmail.com', 'Recife'),
('Pedro Alves', 'pedro@gmail.com', 'Fortaleza'),
('Juliana Rocha', 'juliana@gmail.com', 'Salvador'),
('Lucas Martins', 'lucas@gmail.com', 'Recife'),
('Fernanda Gomes', 'fernanda@gmail.com', 'João Pessoa'),
('Rafael Barros', 'rafael@gmail.com', 'Maceió'),
('Camila Freitas', 'camila@gmail.com', 'Aracaju');

INSERT INTO
pedidos (id_cliente, produto, valor, data_pedido)
VALUES (1, 'Notebook', 3500.00, '2026-03-01'),
(2, 'Mouse', 80.00, '2026-03-02'),
(3, 'Teclado', 150.00, '2026-03-03'),
(1, 'Monitor', 900.00, '2026-03-04'),
(4, 'Cadeira Gamer', 1200.00, '2026-03-05'),
(5, 'Headset', 250.00, '2026-03-06'),
(6, 'Webcam', 300.00, '2026-03-07'),
(7, 'SSD 1TB', 600.00, '2026-03-08'),
(8, 'Memória RAM', 400.00, '2026-03-09'),
(9, 'Placa de Vídeo', 2500.00, '2026-03-10');

UPDATE pedidos
SET valor = 100.00
WHERE id_cliente = 2;

SELECT * FROM clientes;

SELECT SUM(valor) AS 'VALOR TOTAL'
FROM pedidos;

SELECT MAX(valor) AS 'PREÇO MAIS CARO'
FROM pedidos;

SELECT MIN(valor) AS 'PREÇO MAIS BARATO'
FROM pedidos;

SELECT cidade, COUNT(*) 
FROM clientes
GROUP BY cidade; 

SELECT produto, valor
FROM pedidos
GROUP BY produto
HAVING valor < 1000;

SELECT clientes.nome, pedidos.produto
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente; 