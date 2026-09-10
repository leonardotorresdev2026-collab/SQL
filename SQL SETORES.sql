CREATE DATABASE DB_IMAGEM3;
USE DB_IMAGEM3;


CREATE TABLE SETORES(
    ID_SETOR INT NOT NULL,
    NUM_SETOR VARCHAR(100) NOT NULL,
    LOCAL VARCHAR(100) NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    CONSTRAINT PK_SETORES PRIMARY KEY(ID_SETOR)
);
CREATE TABLE FUNCIONARIOS(
    ID_FUNCIONARIO INT NOT NULL,
    NOME_FUNCIONARIO VARCHAR(100) NOT NULL,
    GENERO VARCHAR(100) NOT NULL,
    SALARIO NUMERIC NOT NULL,
    CPF VARCHAR(100) NOT NULL,
    MANAGER_ID INT NOT NULL,
    SETOR_ID INT NOT NULL,
    CONSTRAINT PK_FUNCIONARIOS PRIMARY KEY(ID_FUNCIONARIO),
    CONSTRAINT FK_FUNCIONARIOS_SETORES FOREIGN KEY (SETOR_ID) REFERENCES SETORES (ID_SETOR)
);
insert into SETORES(ID_SETOR,NUM_SETOR, LOCAL, NOME) values 
(1,' 121','corredor 121','marketing'),
(2,' 132','corredor 132','financeiro'),
(3,' 143','corredor 143','comercial'),
(4,' 231','corredor 231','alimenticio'),
(5,'232','corredor 432','educacional'),
(6,' 123','corredor 123','saude'),
(7,' 101','corredor 101','didatico'),
(8,' 109','corredor 109','frigorifico'),
(9,' 108','corredor 108','manutençao'),
(10,'176','corredor 176','trabalhista');


insert into FUNCIONARIOS(ID_FUNCIONARIO,NOME_FUNCIONARIO, GENERO,SALARIO,CPF,MANAGER_ID,SETOR_ID) values 
('A Revolução dos Bichos',' George Owel',1945),
('O senhor dos Aneis',' J. R. R. Tolken',1954),
('Memorias Postumas de Bras Cubas',' Machado de Assis',1981),
('Capitães de Areia',' Jorge Amado',1945),
('Vidas Secas',' Graciliano Ramos',1945);

