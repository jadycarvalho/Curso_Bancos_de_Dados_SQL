/* ENTENDENDO TRIGGERS */

/* ESTRUTURA DE UMA TRIGGER */

CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN -> INICIO

		QUALQUER COMANDO SQL

END -> FIM

CREATE DATABASE AULA40;

USE AULA40;

CREATE TABLE USUARIO(
	IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30),
	SENHA VARCHAR(100)
);

CREATE TABLE BKP_USUARIO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
	NOME VARCHAR(30),
	LOGIN VARCHAR(30)
);

/* CRIANDO A TRIGGER */

DELIMITER $

CREATE TRIGGER BACKUP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW 
BEGIN
		
	INSERT INTO BKP_USUARIO VALUES
	(NULL,OLD.IDUSUARIO,OLD.NOME,OLD.LOGIN);
END
$

INSERT INTO USUARIO VALUES(NULL,'ANDRADE','ANDRADE2009','HEXACAMPEAO');

DELIMITER ;

SELECT * FROM USUARIO;
+-----------+---------+-------------+-------------+
| IDUSUARIO | NOME    | LOGIN       | SENHA       |
+-----------+---------+-------------+-------------+
|         1 | ANDRADE | ANDRADE2009 | HEXACAMPEAO |
+-----------+---------+-------------+-------------+

DELETE FROM USUARIO WHERE IDUSUARIO = 1;

SELECT * FROM BKP_USUARIO;
+----------+-----------+---------+-------------+
| IDBACKUP | IDUSUARIO | NOME    | LOGIN       |
+----------+-----------+---------+-------------+
|        1 |         1 | ANDRADE | ANDRADE2009 |
+----------+-----------+---------+-------------+

/* A 41 - COMUNICACAO ENTRE BANCOS */

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

STATUS
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.23 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       loja
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.23 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 26 min 47 sec

Threads: 2  Questions: 52  Slow queries: 0  Opens: 150  Flush tables: 3  Open tables: 68  Queries per second avg: 0.032
--------------

CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBKP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

USE LOJA;

STATUS
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.23 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       loja
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.23 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 27 min 22 sec

Threads: 2  Questions: 61  Slow queries: 0  Opens: 150  Flush tables: 3  Open tables: 68  Queries per second avg: 0.037
--------------

INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,1000,'TESTE',0.0);

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+-------+-------+
| IDBKP | IDPRODUTO | NOME  | VALOR |
+-------+-----------+-------+-------+
|     1 |      1000 | TESTE |  0.00 |
+-------+-----------+-------+-------+

DELIMITER $

CREATE TRIGGER BACKUP_PRODUT
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
	NEW.NOME,NEW.VALOR);

END
$

DELIMITER ;

INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
+-------+-----------+------------------+--------+

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR);

END
$

DELIMITER ;

DELETE FROM PRODUTO WHERE IDPRODUTO = 2;

SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+

DROP TRIGGER BACKUP_PRODUT;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
	NEW.NOME,NEW.VALOR);

END
$

DELIMITER ;

INSERT INTO PRODUTO VALUES(NULL,'LIVRO C#',100.00);

SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
|         5 | LIVRO C#         | 100.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
|     6 |         2 | LIVRO BI         |  80.00 |
|     7 |         5 | LIVRO C#         | 100.00 |
+-------+-----------+------------------+--------+

ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR(1);

DROP TRIGGER BACKUP_PRODUTO_DEL;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR,'D');

END
$

DELIMITER ;

DELETE FROM PRODUTO WHERE IDPRODUTO = 4;

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  | EVENTO |
+-------+-----------+------------------+--------+--------+
|     1 |      1000 | TESTE            |   0.00 | NULL   |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 | NULL   |
|     3 |         0 | LIVRO BI         |  80.00 | NULL   |
|     4 |         0 | LIVRO ORACLE     |  70.00 | NULL   |
|     5 |         0 | LIVRO SQL SERVER | 100.00 | NULL   |
|     6 |         2 | LIVRO BI         |  80.00 | NULL   |
|     7 |         5 | LIVRO C#         | 100.00 | NULL   |
|     8 |         4 | LIVRO SQL SERVER | 100.00 | D      |
+-------+-----------+------------------+--------+--------+

/* A 43 - TRIGGER DE AUDITORIA */

DELIMITER ;

DROP DATABASE LOJA;

DROP DATABASE BACKUP;

CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+

/*QUANDO*/
SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2021-03-11 17:07:38 |
+---------------------+
/*QUEM*/
SELECT CURRENT_USER();
+----------------+
| CURRENT_USER() |
+----------------+
| root@localhost |
+----------------+

CREATE DATABASE BACKUP;

USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME,
	USUARIO VARCHAR(30),
	EVENTO CHAR(1)
	
);

USE LOJA;

SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+

DELIMITER $

CREATE TRIGGER AUDIT_PROD
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,OLD.NOME,
	OLD.VALOR,NEW.VALOR,NOW(),CURRENT_USER(),'U');
	
END
$

DELIMITER ;

UPDATE PRODUTO SET VALOR = 110.00
WHERE IDPRODUTO = 4;

SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 110.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
|        1 |         4 | LIVRO SQL SERVER |         100.00 |         110.00 | 2021-03-11 17:09:22 | root@localhost | U      |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+

/* A44 - AUTORELACIONAMENTO */


CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	HORAS INT,
	VALOR FLOAT(10,2),
	ID_PREREQ INT
);

ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO);

INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);

SELECT * FROM CURSOS;
+---------+-----------------------+-------+--------+-----------+
| IDCURSO | NOME                  | HORAS | VALOR  | ID_PREREQ |
+---------+-----------------------+-------+--------+-----------+
|       1 | BD RELACIONAL         |    20 | 400.00 |      NULL |
|       2 | BUSINESS INTELLIGENCE |    40 | 800.00 |         1 |
|       3 | RELATORIOS AVANCADOS  |    20 | 600.00 |         2 |
|       4 | LOGICA PROGRAM        |    20 | 400.00 |      NULL |
|       5 | RUBY                  |    30 | 500.00 |         4 |
+---------+-----------------------+-------+--------+-----------+

SELECT NOME, VALOR, HORAS, IFNULL(ID_PREREQ,"SEM REQ") REQUISITO
FROM CURSOS;
+-----------------------+--------+-------+-----------+
| NOME                  | VALOR  | HORAS | REQUISITO |
+-----------------------+--------+-------+-----------+
| BD RELACIONAL         | 400.00 |    20 | SEM REQ   |
| BUSINESS INTELLIGENCE | 800.00 |    40 | 1         |
| RELATORIOS AVANCADOS  | 600.00 |    20 | 2         |
| LOGICA PROGRAM        | 400.00 |    20 | SEM REQ   |
| RUBY                  | 500.00 |    30 | 4         |
+-----------------------+--------+-------+-----------+

/* NOME, VALOR, HORAS E O NOME DO PRE REQUISITO DO CURSO */

SELECT 
C.NOME AS CURSO, 
C.VALOR AS VALOR, 
C.HORAS AS CARGA, 
IFNULL(P.NOME, "---") AS PREREQ
FROM CURSOS C INNER JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;
+-----------------------+--------+-------+-----------------------+
| CURSO                 | VALOR  | CARGA | PREREQ                |
+-----------------------+--------+-------+-----------------------+
| BUSINESS INTELLIGENCE | 800.00 |    40 | BD RELACIONAL         |
| RELATORIOS AVANCADOS  | 600.00 |    20 | BUSINESS INTELLIGENCE |
| RUBY                  | 500.00 |    30 | LOGICA PROGRAM        |
+-----------------------+--------+-------+-----------------------+


SELECT 
C.NOME AS CURSO, 
C.VALOR AS VALOR, 
C.HORAS AS CARGA, 
IFNULL(P.NOME, "---") AS PREREQ
FROM CURSOS C LEFT JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;
+-----------------------+--------+-------+-----------------------+
| CURSO                 | VALOR  | CARGA | PREREQ                |
+-----------------------+--------+-------+-----------------------+
| BD RELACIONAL         | 400.00 |    20 | ---                   |
| BUSINESS INTELLIGENCE | 800.00 |    40 | BD RELACIONAL         |
| RELATORIOS AVANCADOS  | 600.00 |    20 | BUSINESS INTELLIGENCE |
| LOGICA PROGRAM        | 400.00 |    20 | ---                   |
| RUBY                  | 500.00 |    30 | LOGICA PROGRAM        |
+-----------------------+--------+-------+-----------------------+