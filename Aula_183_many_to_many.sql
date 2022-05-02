CREATE TABLE materia(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- INSERINDO DADOS NA TABELA "MATERIA"

INSERT INTO materia(nome)VALUE("quimica");
INSERT INTO materia(nome)VALUE("matematica");
INSERT INTO materia(nome)VALUE("portugues");

-- CRIANDO A TABELA PIVO

CREATE TABLE estudante_materia(
	estudante_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudante(id),
    FOREIGN KEY (materia_id) REFERENCES materia(id)
    
);

-- INSERINDO MAIS ESTUDANTES

INSERT INTO estudante (nome,turma)VALUE("gilbratar","4cb");
INSERT INTO estudante (nome,turma)VALUE("gilbra","4cb");

-- INSERINDO OS ESTUDANTES NAS MASTERIAS

INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (1,1);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (1,2);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (1,3);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (2,1);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (2,2);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (2,3);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (3,1);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (3,2);
INSERT INTO estudante_materia (estudante_id,materia_id)VALUE (3,3);

-- REALIZANDO AS CONSULTAS 

SELECT estudante.nome,materia.nome
FROM estudante_materia
JOIN estudante
ON estudante_materia.estudante_id = estudante.id
JOIN materia
ON estudante_materia.materia_id=materia.id
WHERE estudante_id = 1 or estudante_id = 2 or estudante_id = 3
;