/* FUNCOES DE AGREGACAO NUMERICAS */

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

USE PROJETO;

SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| cursos            |
+-------------------+

DROP TABLE CURSOS;

USE PROJETO;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);

SELECT * FROM VENDEDORES;
+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARCO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
|          2 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          3 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          4 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          5 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          6 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          7 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          8 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
+------------+----------+------+-----------+-----------+-----------+

/* MAX - TRAZ O VALOR MAXIMO DE UMA COLUNA */

SELECT MAX(FEVEREIRO) AS MAIOR_FEV
FROM VENDEDORES;
+-----------+
| MAIOR_FEV |
+-----------+
| 446886.88 |
+-----------+

/* MIN - TRAZ O VALOR MINIMO DE UMA COLUNA */

SELECT MIN(FEVEREIRO) AS MENOR_FEV
FROM VENDEDORES;
+-----------+
| MENOR_FEV |
+-----------+
|   6685.87 |
+-----------+

/* AVG - TRAZ O VALOR MEDIO DE UMA COLUNA */

SELECT AVG(FEVEREIRO) AS MEDIA_FEV
FROM VENDEDORES;
+--------------+
| MEDIA_FEV    |
+--------------+
| 99392.744873 |
+--------------+

/* VARIAS FUNCOES */

SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
	   AVG(JANEIRO) AS MEDIA_JAN
	   FROM VENDEDORES;
+-----------+---------+---------------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN     |
+-----------+---------+---------------+
| 676545.75 | 4785.78 | 124429.901794 |
+-----------+---------+---------------+
	 
/*TRUNCATE - DEFININDO NUMERO DE CASAS DECIMAIS */
	 
SELECT MAX(JANEIRO) AS MAX_JAN,
       MIN(JANEIRO) AS MIN_JAN,
	   TRUNCATE(AVG(JANEIRO),2) AS MEDIA_JAN
	   FROM VENDEDORES;
+-----------+---------+-----------+
| MAX_JAN   | MIN_JAN | MEDIA_JAN |
+-----------+---------+-----------+
| 676545.75 | 4785.78 |  124429.9 |
+-----------+---------+-----------+

/* A30 - AGREGANDO COM SUM() */

SELECT SUM(JANEIRO) AS TOTAL_JAN
FROM VENDEDORES;
+-----------+
| TOTAL_JAN |
+-----------+
| 995439.21 |
+-----------+

SELECT SUM(JANEIRO) AS TOTAL_JAN,
	   SUM(FEVEREIRO) AS TOTAL_FEV,
	   SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES;
+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
| 995439.21 | 795141.96 | 685831.17 |
+-----------+-----------+-----------+

/* VENDAS POR SEXO */

SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY SEXO;
+------+-------------+
| SEXO | TOTAL_MARCO |
+------+-------------+
| M    |   597975.57 |
| F    |    87855.60 |
+------+-------------+

/* SUBQUERIES */

/*VENDEDOR QUE VENDEU MENOS EM MARCO E O SEU NOME */


SELECT NOME, MIN(MARCO) AS MIN_MARCO
FROM VENDEDORES;
+--------+-----------+
| NOME   | MIN_MARCO |
+--------+-----------+
| CARLOS |   4467.90 |
+--------+-----------+
 -- NÃO FOI CARLOS QUEM VENDEU MENOS EM MARCO, FOI MARIA.

SELECT * FROM VENDEDORES;
+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARCO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
|          2 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          3 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          4 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          5 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          6 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          7 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          8 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
+------------+----------+------+-----------+-----------+-----------+

SELECT MIN(MARCO) FROM VENDEDORES;
+------------+
| MIN(MARCO) |
+------------+
|    4467.90 |
+------------+

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| MARIA | 4467.90 |
+-------+---------+

/*NOME E O VALOR QUE VENDEU MAIS EM MARCO */

SELECT NOME, MARCO FROM VENDEDORES
WHERE FEVEREIRO = (SELECT MAX(FEVEREIRO) FROM VENDEDORES);
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| CLARA | 8965.90 |
+-------+---------+

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+

/* QUEM VENDEU MAIS QUE O VALOR MEDIO DE FEV */

SELECT AVG(FEVEREIRO) FROM VENDEDORES;
+----------------+
| AVG(FEVEREIRO) |
+----------------+
|   99392.744873 |
+----------------+

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);
+-------+-----------+
| NOME  | FEVEREIRO |
+-------+-----------+
| CLARA | 446886.88 |
+-------+-----------+

SELECT NOME, MARCO FROM VENDEDORES
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+

SELECT NOME, FEVEREIRO FROM VENDEDORES
WHERE FEVEREIRO < (SELECT AVG(FEVEREIRO) FROM VENDEDORES);
+----------+-----------+
| NOME     | FEVEREIRO |
+----------+-----------+
| CARLOS   |  88346.87 |
| MARIA    |   6768.87 |
| ANTONIO  |   6685.87 |
| ANDERSON |  77544.87 |
| IVONE    |  44774.87 |
| JOAO     |  66478.87 |
| CELIA    |  57654.87 |
+----------+-----------+

/* OPERACOES EM LINHA */

SELECT * FROM VENDEDORES;
+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARCO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
|          2 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          3 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          4 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          5 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          6 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          7 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          8 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
+------------+----------+------+-----------+-----------+-----------+

SELECT NOME,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
	   FROM VENDEDORES;
+----------+-----------+-----------+-----------+------------+-----------+
| NOME     | JANEIRO   | FEVEREIRO | MARCO     | TOTAL      | MEDIA     |
+----------+-----------+-----------+-----------+------------+-----------+
| CARLOS   |  76234.78 |  88346.87 |   5756.90 |  170338.55 |  56779.51 |
| MARIA    |   5865.78 |   6768.87 |   4467.90 |   17102.55 |   5700.84 |
| ANTONIO  |  78769.78 |   6685.87 |   6664.90 |   92120.55 |  30706.85 |
| CLARA    |   5779.78 | 446886.88 |   8965.90 |  461632.56 | 153877.51 |
| ANDERSON | 676545.75 |  77544.87 | 578665.88 | 1332756.49 | 444252.16 |
| IVONE    |  57789.78 |  44774.87 |  68665.90 |  171230.55 |  57076.85 |
| JOAO     |   4785.78 |  66478.87 |   6887.90 |   78152.55 |  26050.84 |
| CELIA    |  89667.78 |  57654.87 |   5755.90 |  153078.55 |  51026.18 |
+----------+-----------+-----------+-----------+------------+-----------+
	   
/* APLICANDO UM % */

SELECT NOME,
	   JANEIRO,
	   FEVEREIRO,
	   MARCO,
	   (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
	   (JANEIRO+FEVEREIRO+MARCO) * .25 AS "DESCONTO",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
	   FROM VENDEDORES;
+----------+-----------+-----------+-----------+------------+-----------+-----------+
| NOME     | JANEIRO   | FEVEREIRO | MARCO     | TOTAL      | DESCONTO  | MEDIA     |
+----------+-----------+-----------+-----------+------------+-----------+-----------+
| CARLOS   |  76234.78 |  88346.87 |   5756.90 |  170338.55 |  42584.64 |  56779.51 |
| MARIA    |   5865.78 |   6768.87 |   4467.90 |   17102.55 |   4275.64 |   5700.84 |
| ANTONIO  |  78769.78 |   6685.87 |   6664.90 |   92120.55 |  23030.14 |  30706.85 |
| CLARA    |   5779.78 | 446886.88 |   8965.90 |  461632.56 | 115408.14 | 153877.51 |
| ANDERSON | 676545.75 |  77544.87 | 578665.88 | 1332756.49 | 333189.12 | 444252.16 |
| IVONE    |  57789.78 |  44774.87 |  68665.90 |  171230.55 |  42807.64 |  57076.85 |
| JOAO     |   4785.78 |  66478.87 |   6887.90 |   78152.55 |  19538.14 |  26050.84 |
| CELIA    |  89667.78 |  57654.87 |   5755.90 |  153078.55 |  38269.64 |  51026.18 |
+----------+-----------+-----------+-----------+------------+-----------+-----------+

/* ALTERANDO TABELAS */

CREATE TABLE TABELA(
	COLUNA1 VARCHAR(30),
	COLUNA2 VARCHAR(30),
	COLUNA3 VARCHAR(30)
);

CREATE TABLE TABELA(
	COLUNA1 INT PRIMARY KEY AUTO_INCREMENT
);
ERROR 1050 (42S01): Table 'tabela' already exists

--ADICIONANDO UMA PK
ALTER TABLE TABELA 
ADD PRIMARY KEY (COLUNA1);

--ADICIONANDO COLUNA SEM POSICAO. ULTIMA POSICAO
ALTER TABLE TABELA 
ADD COLUNA varchar(30);

ALTER TABLE TABELA 
ADD COLUNA100 INT;

--ADICIONANDO UMA COLUNA COM POSICAO
ALTER TABLE TABELA 
ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;
DESC TABELA;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

--MODIFICANDO O TIPO DE UM CAMPO
ALTER TABLE TABELA
 MODIFY COLUNA2 DATE NOT NULL;
 
 DESC TABELA;
 +-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

--RENOMEANDO O NOME DA TABELA
ALTER TABLE TABELA 
RENAME PESSOA;

SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| pessoa            |
| vendedores        |
+-------------------+

CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);

--Foreign key
ALTER TABLE TIME 
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

/* VERIFICAR AS CHAVES */

SHOW CREATE TABLE TIME;
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TIME  | CREATE TABLE `time` (
  `IDTIME` int NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

/* ORGANIZACAO DE CHAVES - CONSTRAINT (REGRA) */

CREATE TABLE JOGADOR(
	IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30)
);

CREATE TABLE TIMES(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	NOMETIME VARCHAR(30),
	ID_JOGADOR INT,
	FOREIGN KEY(ID_JOGADOR)
	REFERENCES JOGADOR(IDJOGADOR)
);

INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);

SHOW CREATE TABLE JOGADOR;
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table   | Create Table                                                                                                                                                                                                           |
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| JOGADOR | CREATE TABLE `jogador` (
  `IDJOGADOR` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

SHOW CREATE TABLE TIMES;
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                                      |
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TIMES | CREATE TABLE `times` (
  `IDTIME` int NOT NULL AUTO_INCREMENT,
  `NOMETIME` varchar(30) DEFAULT NULL,
  `ID_JOGADOR` int DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_JOGADOR` (`ID_JOGADOR`),
  CONSTRAINT `times_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

/* ORGANIZANDO CHAVES */

SHOW TABLES;

DROP TABLE ENDERECO;
DROP TABLE TELEFONE;
DROP TABLE CLIENTE;

DROP TABLE JOGADOR;
DROP TABLE PESSOA;
DROP TABLE TIMES;
DROP TABLE TIME;
DROP TABLE VENDEDORES;

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

SHOW CREATE TABLE TELEFONE;
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                                                                                                                                            |
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int DEFAULT NULL,
  `TIPO` char(3) NOT NULL,
  `NUMERO` varchar(10) NOT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  KEY `FK_CLIENTE_TELEFONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

/* DICIONARIO DE DADOS */

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

USE INFORMATION_SCHEMA;

STATUS
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.23 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          9
Current database:       information_schema
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.23 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 58 min 46 sec

Threads: 2  Questions: 212  Slow queries: 0  Opens: 209  Flush tables: 3  Open tables: 104  Queries per second avg: 0.060
--------------

SHOW TABLES;
+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| ADMINISTRABLE_ROLE_AUTHORIZATIONS     |
| APPLICABLE_ROLES                      |
| CHARACTER_SETS                        |
| CHECK_CONSTRAINTS                     |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLLATIONS                            |
| COLUMN_PRIVILEGES                     |
| COLUMN_STATISTICS                     |
| COLUMNS                               |
| COLUMNS_EXTENSIONS                    |
| ENABLED_ROLES                         |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| INNODB_BUFFER_PAGE                    |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_CACHED_INDEXES                 |
| INNODB_CMP                            |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_CMP_RESET                      |
| INNODB_CMPMEM                         |
| INNODB_CMPMEM_RESET                   |
| INNODB_COLUMNS                        |
| INNODB_DATAFILES                      |
| INNODB_FIELDS                         |
| INNODB_FOREIGN                        |
| INNODB_FOREIGN_COLS                   |
| INNODB_FT_BEING_DELETED               |
| INNODB_FT_CONFIG                      |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_DELETED                     |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_INDEXES                        |
| INNODB_METRICS                        |
| INNODB_SESSION_TEMP_TABLESPACES       |
| INNODB_TABLES                         |
| INNODB_TABLESPACES                    |
| INNODB_TABLESPACES_BRIEF              |
| INNODB_TABLESTATS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_TRX                            |
| INNODB_VIRTUAL                        |
| KEY_COLUMN_USAGE                      |
| KEYWORDS                              |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| RESOURCE_GROUPS                       |
| ROLE_COLUMN_GRANTS                    |
| ROLE_ROUTINE_GRANTS                   |
| ROLE_TABLE_GRANTS                     |
| ROUTINES                              |
| SCHEMA_PRIVILEGES                     |
| SCHEMATA                              |
| SCHEMATA_EXTENSIONS                   |
| ST_GEOMETRY_COLUMNS                   |
| ST_SPATIAL_REFERENCE_SYSTEMS          |
| ST_UNITS_OF_MEASURE                   |
| STATISTICS                            |
| TABLE_CONSTRAINTS                     |
| TABLE_CONSTRAINTS_EXTENSIONS          |
| TABLE_PRIVILEGES                      |
| TABLES                                |
| TABLES_EXTENSIONS                     |
| TABLESPACES                           |
| TABLESPACES_EXTENSIONS                |
| TRIGGERS                              |
| USER_ATTRIBUTES                       |
| USER_PRIVILEGES                       |
| VIEW_ROUTINE_USAGE                    |
| VIEW_TABLE_USAGE                      |
| VIEWS                                 |
+---------------------------------------+

DESC TABLE_CONSTRAINTS;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_SCHEMA  | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_NAME    | varchar(64) | YES  |     | NULL    |       |
| TABLE_SCHEMA       | varchar(64) | YES  |     | NULL    |       |
| TABLE_NAME         | varchar(64) | YES  |     | NULL    |       |
| CONSTRAINT_TYPE    | varchar(11) | NO   |     |         |       |
| ENFORCED           | varchar(3)  | NO   |     |         |       |
+--------------------+-------------+------+-----+---------+-------+

SELECT CONSTRAINT_SCHEMA AS "BANCO",
	   TABLE_NAME AS "TABELA",
	   CONSTRAINT_NAME AS "NOME REGRA",
	   CONSTRAINT_TYPE AS "TIPO"
	   FROM TABLE_CONSTRAINTS
	   WHERE CONSTRAINT_SCHEMA = 'COMERCIO';
Empty set (0.00 sec)

/* APAGANDO CONSTRAINTS */

USE COMERCIO;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;
ERROR 1091 (42000): Cant DROP 'FK_CLIENTE_TELEFONE'; check that column/key exists

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

/* ACOES DE CONSTRAINTS */

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
+--------------------+

INSERT INTO CLIENTE VALUES(1,'RICARDO');
INSERT INTO CLIENTE VALUES(2,'CLARA');
INSERT INTO CLIENTE VALUES(3,'JULIO');
INSERT INTO CLIENTE VALUES(4,'ANA');

INSERT INTO TELEFONE VALUES(10,'CEL','37834334',2);
INSERT INTO TELEFONE VALUES(20,'RES','67465656',2);
INSERT INTO TELEFONE VALUES(30,'CEL','88665645',1);
INSERT INTO TELEFONE VALUES(40,'RES','77543546',3);
INSERT INTO TELEFONE VALUES(50,'COM','75454675',1);
INSERT INTO TELEFONE VALUES(60,'CEL','76765455',4);

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;
+--------+------+----------+
| NOME   | TIPO | NUMERO   |
+--------+------+----------+
| JOAO   | CEL  | 87866896 |
| JOAO   | RES  | 99667587 |
| JOAO   | COM  | 66687899 |
| JOAO   | CEL  | 88665645 |
| JOAO   | COM  | 75454675 |
| CARLOS | COM  | 54768899 |
| CARLOS | CEL  | 88687909 |
| CARLOS | RES  | 67465656 |
| ANA    | CEL  | 78989765 |
| ANA    | CEL  | 99766676 |
| ANA    | RES  | 77543546 |
| CLARA  | CEL  | 76765455 |
| JORGE  | CEL  | 78458743 |
| JORGE  | RES  | 56576876 |
| JORGE  | RES  | 89986668 |
+--------+------+----------+

/*ERRO DE REFERENCIA */
DELETE FROM CLIENTE WHERE IDCLIENTE = 1;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`comercio`.`telefone`, CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`))

/*CORRIGIR ERRO*/
DELETE FROM TELEFONE
WHERE ID_CLIENTE = 1;

/* APAGANDO A FOREIGN KEY */

ALTER TABLE TELEFONE DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

/*RECRIANDO A FK */

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
ON DELETE CASCADE;

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;
+--------+------+----------+
| NOME   | TIPO | NUMERO   |
+--------+------+----------+
| CARLOS | COM  | 54768899 |
| CARLOS | CEL  | 88687909 |
| CARLOS | RES  | 67465656 |
| ANA    | CEL  | 78989765 |
| ANA    | CEL  | 99766676 |
| ANA    | RES  | 77543546 |
| CLARA  | CEL  | 76765455 |
| JORGE  | CEL  | 78458743 |
| JORGE  | RES  | 56576876 |
| JORGE  | RES  | 89986668 |
+--------+------+----------+

DELETE FROM CLIENTE WHERE IDCLIENTE = 2;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`comercio`.`endereco`, CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`))

ALTER TABLE TELEFONE DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
ON DELETE SET NULL;

SELECT NOME, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;
+--------+------+----------+
| NOME   | TIPO | NUMERO   |
+--------+------+----------+
| CARLOS | COM  | 54768899 |
| CARLOS | CEL  | 88687909 |
| CARLOS | RES  | 67465656 |
| ANA    | CEL  | 78989765 |
| ANA    | CEL  | 99766676 |
| ANA    | RES  | 77543546 |
| CLARA  | CEL  | 76765455 |
| JORGE  | CEL  | 78458743 |
| JORGE  | RES  | 56576876 |
| JORGE  | RES  | 89986668 |
+--------+------+----------+

SELECT * FROM CLIENTE;
+-----------+--------+------+----------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL          | CPF         |
+-----------+--------+------+----------------+-------------+
|         1 | JOAO   | M    | JOAOA@IG.COM   | 76567587887 |
|         2 | CARLOS | M    | CARLOSA@IG.COM | 5464553466  |
|         3 | ANA    | F    | ANA@IG.COM     | 456545678   |
|         4 | CLARA  | F    | NULL           | 5687766856  |
|         5 | JORGE  | M    | JORGE@IG.COM   | 8756547688  |
|         6 | CELIA  | M    | JCELIA@IG.COM  | 5767876889  |
|         7 | PAULA  | M    | NULL           | 77437493    |
+-----------+--------+------+----------------+-------------+

DELETE FROM CLIENTE WHERE IDCLIENTE = 3;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`comercio`.`endereco`, CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`))

SELECT * FROM TELEFONE;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          4 | COM  | 54768899 |          2 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
|         20 | RES  | 67465656 |          2 |
|         40 | RES  | 77543546 |          3 |
|         60 | CEL  | 76765455 |          4 |
+------------+------+----------+------------+

/* SET NULL - DELETE CASCADE */













