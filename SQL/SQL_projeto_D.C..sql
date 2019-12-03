/* Lógico_projeto_D.C.: */

CREATE TABLE CURSOS (
    Idioma_curso VARCHAR,
    Nome_curso VARCHAR,
    Duracao_curso TIME,
    ID_curso INTEGER PRIMARY KEY,
    Valor_curso FLOAT
);

CREATE TABLE HISTORICO DE CERTIFICADOS_ALUNOS (
    URL_Certificado VARCHAR,
    Data_Conclusao DATE,
    Validade_ceritifcado DATE,
    Id_ceritifcado INTEGER,
    Id_aluno INTEGER,
    Sexo VARCHAR,
    Escolaridade VARCHAR,
    Idade INTEGER,
    Email VARCHAR,
    Nome_aluno VARCHAR,
    PRIMARY KEY (Id_ceritifcado, Id_aluno),
    UNIQUE (URL_Certificado, Id_ceritifcado)
);

CREATE TABLE AREAS (
    ID_Area INTEGER PRIMARY KEY UNIQUE,
    Nome_Area VARCHAR
);

CREATE TABLE Favoritos (
    fk_ALUNOS_Id_aluno INTEGER,
    fk_CURSOS_ID_curso INTEGER
);

CREATE TABLE Possui (
    fk_HISTORICO DE CERTIFICADOS_ALUNOS_Id_ceritifcado INTEGER,
    fk_HISTORICO DE CERTIFICADOS_ALUNOS_Id_aluno INTEGER,
    fk_CURSOS_ID_curso INTEGER
);

CREATE TABLE Possui (
    fk_CURSOS_ID_curso INTEGER,
    fk_AREAS_ID_Area INTEGER
);
 
ALTER TABLE Favoritos ADD CONSTRAINT FK_Favoritos_1
    FOREIGN KEY (fk_ALUNOS_Id_aluno)
    REFERENCES ??? (???);
 
ALTER TABLE Favoritos ADD CONSTRAINT FK_Favoritos_2
    FOREIGN KEY (fk_CURSOS_ID_curso)
    REFERENCES CURSOS (ID_curso)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_HISTORICO DE CERTIFICADOS_ALUNOS_Id_ceritifcado, fk_HISTORICO DE CERTIFICADOS_ALUNOS_Id_aluno)
    REFERENCES HISTORICO DE CERTIFICADOS_ALUNOS (Id_ceritifcado, Id_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_CURSOS_ID_curso)
    REFERENCES CURSOS (ID_curso)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_CURSOS_ID_curso)
    REFERENCES CURSOS (ID_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_AREAS_ID_Area)
    REFERENCES AREAS (ID_Area)
    ON DELETE RESTRICT;