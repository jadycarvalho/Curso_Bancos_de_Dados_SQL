/* RESOLUÇÃO */

SHOW DATABASES;

USE COMERCIO;

/* CADASTRO CLIENTE */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

SELECT * FROM CLIENTE;
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |
|         4 | CLARA   | F    | NULL              | 5687766856  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |
|         6 | CELIA   | F    | JCELIA@IG.COM     | 5767876889  |
|         7 | PAULA   | F    | NULL              | 77437493    |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        11 | GIOVANA | F    | NULL              | 0876655     |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        14 | LORENA  | M    | NULL              | 774557887   |
|        15 | EDUARDO | M    | NULL              | 54376457    |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+


/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);

SELECT * FROM ENDERECO;
+------------+--------------------+------------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|          9 | RUA JOAQUIM SILVA  | ALVORADA   | NITEROI        | RJ     |          7 |
|         10 | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     |          9 |
|         11 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|         12 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|         13 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|         14 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|         15 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|         16 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|         17 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|         18 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|         19 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|         20 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|         21 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|         22 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+------------+--------------------+------------+----------------+--------+------------+


/* CADASTRE TELEFONES PARA OS CLIENTES */

INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

SELECT * FROM TELEFONE;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          3 | CEL  | 87866896 |          1 |
|          4 | COM  | 54768899 |          2 |
|          5 | RES  | 99667587 |          1 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          8 | COM  | 66687899 |          1 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
|         11 | RES  | 68976565 |          9 |
|         12 | CEL  | 99656675 |          9 |
|         13 | CEL  | 33567765 |         11 |
|         14 | CEL  | 88668786 |         11 |
|         15 | COM  | 55689654 |         11 |
|         16 | COM  | 88687979 |         12 |
|         17 | COM  | 88965676 |         13 |
|         18 | CEL  | 89966809 |         15 |
|         19 | COM  | 88679978 |         16 |
|         20 | CEL  | 99655768 |         17 |
|         21 | RES  | 89955665 |         18 |
|         22 | RES  | 77455786 |         19 |
|         23 | RES  | 89766554 |         19 |
|         24 | RES  | 77755785 |         20 |
|         25 | COM  | 44522578 |         20 |
+------------+------+----------+------------+

/* RELATORIO GERAL DE TODOS OS CLIENTES */

/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

DESC CLIENTE;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+

/* RELATORIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+

/* 12 13 18 19  */

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 12
OR IDCLIENTE = 13
OR IDCLIENTE = 18
OR IDCLIENTE = 19;
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789  |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763  |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (12,13,18,19);
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789  |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763  |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (12,13,18,19);

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (12,13,18,19);
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789  |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+

/* RELATORIO DE MULHERES */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
	   E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
	   T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767  | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+

UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE = 16;

/* QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|          9 | M    |
|         11 | F    |
+------------+------+


/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         1 | JOAOA@IG.COM      | JOAO    | M    |
|         2 | CARLOSA@IG.COM    | CARLOS  | M    |
|         2 | CARLOSA@IG.COM    | CARLOS  | M    |
|         3 | ANA@IG.COM        | ANA     | F    |
|         3 | ANA@IG.COM        | ANA     | F    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         5 | JORGE@IG.COM      | JORGE   | M    |
|         9 | FLAVIO@IG.COM     | FLAVIO  | M    |
|         9 | FLAVIO@IG.COM     | FLAVIO  | M    |
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        12 | KARLA@GMAIL.COM   | KARLA   | F    |
|        13 | DANIELE@GMAIL.COM | DANIELE | F    |
|        15 | NULL              | EDUARDO | M    |
|        16 | ANTONIO@IG.COM    | ANTONIO | M    |
|        17 | ANTONIO@UOL.COM   | ANTONIO | M    |
|        18 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         3 | ANA@IG.COM        | ANA     | F    |
|         3 | ANA@IG.COM        | ANA     | F    |
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        12 | KARLA@GMAIL.COM   | KARLA   | F    |
|        13 | DANIELE@GMAIL.COM | DANIELE | F    |
|        18 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        11 | NULL              | GIOVANA | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        19 | CARMEM@IG.COM     | CARMEM  | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    |
+-----------+-------------------+---------+------+


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';
+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        11 | NULL              | GIOVANA | F    | CEL  | CENTRO | RIO DE JANEIRO |
|        11 | NULL              | GIOVANA | F    | CEL  | CENTRO | RIO DE JANEIRO |
|        11 | NULL              | GIOVANA | F    | COM  | CENTRO | RIO DE JANEIRO |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO = 'RES' OR TIPO = 'COM';
+-----------+-------------------+---------+------+------+------------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO     | CIDADE         |
+-----------+-------------------+---------+------+------+------------+----------------+
|         2 | CARLOSA@IG.COM    | CARLOS  | M    | COM  | ESTACIO    | RIO DE JANEIRO |
|         1 | JOAOA@IG.COM      | JOAO    | M    | COM  | CENTRO     | RIO DE JANEIRO |
|        11 | NULL              | GIOVANA | F    | COM  | CENTRO     | RIO DE JANEIRO |
|        12 | KARLA@GMAIL.COM   | KARLA   | F    | COM  | COPACABANA | RIO DE JANEIRO |
|        13 | DANIELE@GMAIL.COM | DANIELE | F    | COM  | CENTRO     | VITORIA        |
|        16 | ANTONIO@IG.COM    | ANTONIO | M    | COM  | JARDINS    | SAO PAULO      |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO     | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+------------+----------------+


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');
+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        11 | NULL              | GIOVANA | F    | COM  | CENTRO | RIO DE JANEIRO |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | CARMEM@IG.COM     | CARMEM  | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | RES  | CENTRO | RIO DE JANEIRO |
|        20 | ADRIANA@GMAIL.COM | ADRIANA | F    | COM  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+


/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT   C.NOME, C.EMAIL, T.NUMERO AS CELULAR /* PROJECAO */
FROM CLIENTE C /* ORIGEM */
INNER JOIN ENDERECO E /*JUNCAO */
ON C.IDCLIENTE = E.ID_CLIENTE /*JUNCAO CONDICAO */
INNER JOIN TELEFONE T /*JUNCAO */
ON C.IDCLIENTE = T.ID_CLIENTE /*JUNCAO CONDICAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; /*SELECAO*/
+---------+----------------+----------+
| NOME    | EMAIL          | CELULAR  |
+---------+----------------+----------+
| JOAO    | JOAOA@IG.COM   | 87866896 |
| CARLOS  | CARLOSA@IG.COM | 88687909 |
| GIOVANA | NULL           | 33567765 |
| GIOVANA | NULL           | 88668786 |
+---------+----------------+----------+


/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';
+--------+------------------+----------+
| NOME   | EMAIL            | CELULAR  |
+--------+------------------+----------+
| ANA    | ANA@IG.COM       | 78989765 |
| ANA    | ANA@IG.COM       | 99766676 |
| ELAINE | ELAINE@GLOBO.COM | 89955665 |
+--------+------------------+----------+

/* nome, email, numero, estado */

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