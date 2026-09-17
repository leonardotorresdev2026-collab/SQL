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


insert into FUNCIONARIOS (ID_FUNCIONARIO,NOME_FUNCIONARIO,GENERO,SALARIO,CPF,MANAGER_ID,SETOR_ID) values
(1,'bersi','nao informado',3000,'11111111111',1,1),
(2,'thomas','masculino',3100,'22222222222',1,2),
(3,'leonardo','masculino',3200,'33333333333',1,3),
(4,'estevan','masculino',3300,'44444444444',1,4),
(5,'camila','feminino',3400,'55555555555',2,5),
(6,'miti','feminino',3500,'66666666666',2,6),
(7,'marques','nao informado',3600,'77777777777',3,7),
(8,'isabela','feminino',3700,'88888888888',3,8),
(9,'felipe','masculino',3800,'99999999999',4,9),
(10,'bessa','nao informado',3900,'10101010101',4,10);
