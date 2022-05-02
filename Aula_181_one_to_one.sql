CREATE DATABASE relacoes;

CREATE TABLE estudante (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    turma VARCHAR(5)
);

CREATE TABLE contato(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR (10),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudante(id)
);

SELECT * FROM estudante;
SELECT * FROM contato;

INSERT INTO estudante(nome,turma)VALUE("Joãozinho","3AA");
INSERT INTO estudante(nome,turma)VALUE("Mariazinha","3AB");

INSERT INTO contato (telefone,estudante_id)VALUE("9777-7777",1);
INSERT INTO contato (telefone,estudante_id)VALUE("9888-7777",2);