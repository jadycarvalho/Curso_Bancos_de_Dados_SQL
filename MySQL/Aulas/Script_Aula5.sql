/* FUNÇÃO IFNULL(); */

IFNULL()

SHOW DATABASES;

USE COMERCIO;

SHOW TABLES;

SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 99656675 |
| GIOVANA | NULL              | RJ     | 33567765 |
| GIOVANA | NULL              | RJ     | 88668786 |
| GIOVANA | NULL              | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88965676 |
| EDUARDO | NULL              | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM    | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 44522578 |
+---------+-------------------+--------+----------+

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'NAO TEM EMAIL'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+---------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'NAO TEM EMAIL') | ESTADO | NUMERO   |
+---------+---------------------------------+--------+----------+
| JORGE   | JORGE@IG.COM                    | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                    | ES     | 56576876 |
| JOAO    | JOAOA@IG.COM                    | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 54768899 |
| JOAO    | JOAOA@IG.COM                    | RJ     | 99667587 |
| ANA     | ANA@IG.COM                      | SP     | 78989765 |
| ANA     | ANA@IG.COM                      | SP     | 99766676 |
| JOAO    | JOAOA@IG.COM                    | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM                    | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM                  | RJ     | 88687909 |
| FLAVIO  | FLAVIO@IG.COM                   | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM                   | MG     | 99656675 |
| GIOVANA | NAO TEM EMAIL                   | RJ     | 33567765 |
| GIOVANA | NAO TEM EMAIL                   | RJ     | 88668786 |
| GIOVANA | NAO TEM EMAIL                   | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM                 | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM               | ES     | 88965676 |
| EDUARDO | NAO TEM EMAIL                   | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM                  | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM                 | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM                | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM                   | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM               | RJ     | 44522578 |
+---------+---------------------------------+--------+----------+

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************'), 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+--------------------------------+--------+----------+
| NOME    | IFNULL(C.EMAIL,'************') | ESTADO | NUMERO   |
+---------+--------------------------------+--------+----------+
| JORGE   | JORGE@IG.COM                   | ES     | 78458743 |
| JORGE   | JORGE@IG.COM                   | ES     | 56576876 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM                 | RJ     | 54768899 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 99667587 |
| ANA     | ANA@IG.COM                     | SP     | 78989765 |
| ANA     | ANA@IG.COM                     | SP     | 99766676 |
| JOAO    | JOAOA@IG.COM                   | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM                   | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM                 | RJ     | 88687909 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM                  | MG     | 99656675 |
| GIOVANA | ************                   | RJ     | 33567765 |
| GIOVANA | ************                   | RJ     | 88668786 |
| GIOVANA | ************                   | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM                | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM              | ES     | 88965676 |
| EDUARDO | ************                   | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM                 | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM                | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM               | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM                  | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM              | RJ     | 44522578 |
+---------+--------------------------------+--------+----------+

SELECT  C.NOME, 
		IFNULL(C.EMAIL,'************') AS "E-MAIL", 
		E.ESTADO, 
		T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+-------------------+--------+----------+
| NOME    | E-MAIL            | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 99656675 |
| GIOVANA | ************      | RJ     | 33567765 |
| GIOVANA | ************      | RJ     | 88668786 |
| GIOVANA | ************      | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88965676 |
| EDUARDO | ************      | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM    | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 44522578 |
+---------+-------------------+--------+----------+

/* VIEW */

SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | NULL              | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | NULL              | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

CREATE VIEW RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| relatorio          |
| telefone           |
+--------------------+

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| comercio           |
| exemplo            |
| exercicio2         |
| information_schema |
| livraria           |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

SHOW VIEW; -- NAO EXISTE

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;

/* INSERINDO UM PREFIXO V_ */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;
+---------+----------+--------+
| NOME    | NUMERO   | ESTADO |
+---------+----------+--------+
| JORGE   | 78458743 | ES     |
| JORGE   | 56576876 | ES     |
| JOAO    | 87866896 | RJ     |
| CARLOS  | 54768899 | RJ     |
| JOAO    | 99667587 | RJ     |
| ANA     | 78989765 | SP     |
| ANA     | 99766676 | SP     |
| JOAO    | 66687899 | RJ     |
| JORGE   | 89986668 | ES     |
| CARLOS  | 88687909 | RJ     |
| FLAVIO  | 68976565 | MG     |
| FLAVIO  | 99656675 | MG     |
| GIOVANA | 33567765 | RJ     |
| GIOVANA | 88668786 | RJ     |
| GIOVANA | 55689654 | RJ     |
| KARLA   | 88687979 | RJ     |
| DANIELE | 88965676 | ES     |
| EDUARDO | 89966809 | PR     |
| ANTONIO | 88679978 | SP     |
| ANTONIO | 99655768 | PR     |
| ELAINE  | 89955665 | SP     |
| CARMEM  | 77455786 | RJ     |
| CARMEM  | 89766554 | RJ     |
| ADRIANA | 77755785 | RJ     |
| ADRIANA | 44522578 | RJ     |
+---------+----------+--------+

/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
'ANDREIA','F','ANDREIA@UOL.COM.BR','CEL','873547864','CENTRO','VITORIA','ES'
);
ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'

/* É PERMITIDO FAZER UPDATES EM VIEWS COM JOIN */

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';

CREATE TABLE JOGADORES(
	IDJOGADOR INT,
	NOME VARCHAR(30),
	ESTADO CHAR(2)
);

INSERT INTO JOGADORES VALUES(1,'GUERRERO','RS');
INSERT INTO JOGADORES VALUES(2,'GABIGOL','RJ');
INSERT INTO JOGADORES VALUES(3,'GANSO','RJ');
INSERT INTO JOGADORES VALUES(4,'NENÊ', 'RJ');
INSERT INTO JOGADORES VALUES(5,'LOVE','SP');

CREATE VIEW V_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

SELECT * FROM V_JOGADORES;
+----------+--------+
| NOME     | ESTADO |
+----------+--------+
| GUERRERO | RS     |
| GABIGOL  | RJ     |
| GANSO    | RJ     |
| NENÊ     | RJ     |
| LOVE     | SP     |
+----------+--------+

DELETE FROM V_JOGADORES
WHERE NOME = 'GUERRERO';
Query OK, 1 row affected (0.65 sec)

INSERT INTO V_JOGADORES VALUES('GUERRERO','RS');
Query OK, 1 row affected (0.09 sec)

SELECT * FROM JOGADORES;
+-----------+----------+--------+
| IDJOGADOR | NOME     | ESTADO |
+-----------+----------+--------+
|         2 | GABIGOL  | RJ     |
|         3 | GANSO    | RJ     |
|         4 | NENÊ     | RJ     |
|         5 | LOVE     | SP     |
|      NULL | GUERRERO | RS     |
+-----------+----------+--------+

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

/* ORDER BY */

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE'); 

SELECT * FROM ALUNOS
ORDER BY NUMERO;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | ANA     |
|      2 | ANDRE   |
|      5 | ANTONIO |
|      3 | CLARA   |
|      1 | CLARA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      1 | JANAINA |
|      1 | JOAO    |
|      4 | MAFRA   |
|      3 | MARCELO |
|      1 | MARIA   |
|      6 | VIVIANE |
|      2 | ZOE     |
+--------+---------+

/* ORDENANDO POR MAIS DE UMA COLUNA */

SELECT * FROM ALUNOS
ORDER BY 1;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

/* MESCLANDO ORDER BY COM PROJECAO */

SELECT NOME FROM ALUNOS
ORDER BY 1, 2;
ERROR 1054 (42S22): Unknown column '2' in 'order clause'

SELECT NOME FROM ALUNOS
ORDER BY NUMERO, NOME;
+---------+
| NOME    |
+---------+
| CLARA   |
| JANAINA |
| JOAO    |
| MARIA   |
| ANDRE   |
| ZOE     |
| CLARA   |
| MARCELO |
| GIOVANI |
| MAFRA   |
| ANTONIO |
| JANAINA |
| ANA     |
| VIVIANE |
+---------+

/* ORDER BY DESC / ASC */

SELECT * FROM ALUNOS
ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 ASC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | ANA     |
|      6 | VIVIANE |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | CLARA   |
|      3 | MARCELO |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1, 2 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | MARCELO |
|      3 | CLARA   |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | VIVIANE |
|      6 | ANA     |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | VIVIANE |
|      6 | ANA     |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | MARCELO |
|      3 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
+--------+---------+

/* ORDENANDO COM JOINS */

SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| alunos             |
| cliente            |
| endereco           |
| jogadores          |
| produto            |
| telefone           |
| v_jogadores        |
| v_relatorio        |
+--------------------+

SELECT * FROM V_RELATORIO
ORDER BY 1;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+

/* Delimitador */

SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1

STATUS
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.23 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       comercio
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
Uptime:                 18 min 33 sec

Threads: 2  Questions: 69  Slow queries: 0  Opens: 148  Flush tables: 3  Open tables: 67  Queries per second avg: 0.061
--------------

DELIMITER $

SELECT * FROM V_RELATORIO;

DELIMITER ;

/* STORED PROCEDURES */

SELECT 'MAFRA';
+-------+
| MAFRA |
+-------+
| MAFRA |
+-------+

DELIMITER $

CREATE PROCEDURE NOME()
BEGIN

	QUALQUER PROGRAMACAO;

END
$


DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN
	
	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

/* CHAMANDO UMA PROCEDURE */


CALL NOME_EMPRESA()$
+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

DELIMITER ;

CALL NOME_EMPRESA();
+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

/* PROCEDURES COM PARAMETROS */

SELECT 10 + 10 AS CONTA;
+-------+
| CONTA |
+-------+
|    20 |
+-------+

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
	
	SELECT 10 + 10 AS CONTA;

END
$

CALL CONTA()$
+-------+
| CONTA |
+-------+
|    20 |
+-------+

DROP PROCEDURE CONTA$

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	
	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL CONTA(100,50)$
+-------+
| CONTA |
+-------+
|   150 |
+-------+

CALL CONTA(345634,4354)$
+--------+
| CONTA  |
+--------+
| 349988 |
+--------+

CALL CONTA(55654,56760)$
+--------+
| CONTA  |
+--------+
| 112414 |
+--------+

CALL CONTA(45646,6766)$
+-------+
| CONTA |
+-------+
| 52412 |
+-------+

/* REVISANDO */

CREATE DATABASE MAFRA;

USE MAFRA;

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| comercio           |
| exemplo            |
| exercicio2         |
| information_schema |
| livraria           |
| mafra              |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

DROP DATABASE COMERCIO;
DROP DATABASE EXEMPLO;
DROP DATABASE EXERCICIO2;
DROP DATABASE LIVRARIA;
DROP DATABASE MAFRA;
DROP DATABASE PROJETO;

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+


/* PROCEDURES */


CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCOS DE DADOS',40,700.00);

SELECT * FROM CURSOS;
+---------+--------------------------------+-------+--------+
| IDCURSO | NOME                           | HORAS | VALOR  |
+---------+--------------------------------+-------+--------+
|       1 | JAVA                           |    30 | 500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 | 700.00 |
+---------+--------------------------------+-------+--------+

DELIMITER #

STATUS
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.23 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          8
Current database:       projeto
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        #
Server version:         8.0.23 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Insert id:              2
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb4
Conn.  characterset:    utf8mb4
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 27 min 14 sec

Threads: 2  Questions: 118  Slow queries: 0  Opens: 167  Flush tables: 3  Open tables: 81  Queries per second avg: 0.072
--------------

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(30),
						   P_PRECO  FLOAT(10,2))
BEGIN
	
	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

SELECT * FROM CURSOS;
+---------+--------------------------------+-------+---------+
| IDCURSO | NOME                           | HORAS | VALOR   |
+---------+--------------------------------+-------+---------+
|       1 | JAVA                           |    30 |  500.00 |
|       2 | FUNDAMENTOS DE BANCOS DE DADOS |    40 |  700.00 |
|       3 | BI SQL SERVER                  |    35 | 3000.00 |
|       4 | POWER BI                       |    20 | 1000.00 |
|       5 | TABLEAU                        |    30 | 1200.00 |
+---------+--------------------------------+-------+---------+











