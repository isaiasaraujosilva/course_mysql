CREATE TABLE cliente (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE
    );
    
    
-- PEDIDOS

CREATE TABLE pedidos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	qtd INT,
	valor FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

INSERT INTO cliente(nome,data_nascimento)VALUE("gilbratar","1995-01-16");
INSERT INTO pedidos(qtd,valor,cliente_id)VALUE(5,125.50,1);

/*Consultando o pedido*/

SELECT cliente.id,cliente.nome,pedidos.qtd,pedidos.valor 
FROM cliente
INNER JOIN pedidos
ON cliente.id=pedidos.cliente_id;