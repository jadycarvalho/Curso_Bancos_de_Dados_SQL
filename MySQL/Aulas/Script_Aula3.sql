SHOW DATABASE;
+--------------------+
| Database           |
+--------------------+
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

USE PROJETO;

SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| cliente           |
| livros            |
+-------------------+

/* DELETANDO UMA TABELA */
DROP TABLE LIVROS;

SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| cliente           |
+-------------------+

/* FILTRANDO VALORES NULOS */

SELECT * FROM CLIENTE;
+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL               | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
| JOAO   | M    | JOAO@GMAIL.COM      | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@GMAIL.COM     | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | NULL                | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | NULL                | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | ANA@GLOBO.COM       |  85548962 | 548556985 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO -SP  |
| CARLA  | F    | CARLA@TERATI.COM.BR |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
+--------+------+---------------------+-----------+-----------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE sexo = 'F';
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO -SP  |
| CARLA  | F    | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
+--------+------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO
    -> FROM CLIENTE
    -> WHERE EMAIL = NULL;

Empty set (0.00 sec) /* VAZIO */

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JORGE  | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;
+-------+------+----------------------------------------------+
| NOME  | SEXO | ENDERECO                                     |
+-------+------+----------------------------------------------+
| JOAO  | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
| CELIA | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ     |
| ANA   | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO -SP |
| CARLA | F    | SAMUEL SILVA - CENTRO - SAO PAULO -SP        |
+-------+------+----------------------------------------------+

/* IS OU IS NOT NULL */

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+---------------------+
| NOME   | EMAIL               |
+--------+---------------------+
| JOAO   | JOAO@GMAIL.COM      |
| CELIA  | CELIA@GMAIL.COM     |
| JORGE  | NULL                |
| LILIAN | NULL                |
| ANA    | ANA@GLOBO.COM       |
| CARLA  | CARLA@TERATI.COM.BR |
+--------+---------------------+

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | LILIAN@HOTMAIL.COM |
| CELIA  | LILIAN@HOTMAIL.COM |
| JORGE  | LILIAN@HOTMAIL.COM |
| LILIAN | LILIAN@HOTMAIL.COM |
| ANA    | LILIAN@HOTMAIL.COM |
| CARLA  | LILIAN@HOTMAIL.COM |
+--------+--------------------+

/* WHERE - VAI SER O SEU MELHOR AMIGO DA VIDA PRA VIDA INTEIRA */

SELECT * FROM CLIENTE
WHERE NOME = 'LILIAN';
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'JOAOA@IG.COM.BR'
WHERE NOME = 'JOAO';

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | JOAOA@IG.COM.BR    |
| CELIA  | LILIAN@HOTMAIL.COM |
| JORGE  | LILIAN@HOTMAIL.COM |
| LILIAN | LILIAN@HOTMAIL.COM |
| ANA    | LILIAN@HOTMAIL.COM |
| CARLA  | LILIAN@HOTMAIL.COM |
+--------+--------------------+

UPDATE CLIENTE
SET EMAIL = 'JORGE@IG.COM.BR'
WHERE NOME = 'JORGE';

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | JOAOA@IG.COM.BR    |
| CELIA  | LILIAN@HOTMAIL.COM |
| JORGE  | JORGE@IG.COM.BR    |
| LILIAN | LILIAN@HOTMAIL.COM |
| ANA    | LILIAN@HOTMAIL.COM |
| CARLA  | LILIAN@HOTMAIL.COM |
+--------+--------------------+

UPDATE CLIENTE
SET EMAIL = 'CELIA@IG.COM'
WHERE NOME = 'CELIA';

UPDATE CLIENTE
SET EMAIL = 'ANA@IG.COM'
WHERE NOME = 'ANA';

UPDATE CLIENTE
SET EMAIL = 'CARLA@GMAIL.COM'
WHERE NOME = 'CARLA';

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | JOAOA@IG.COM.BR    |
| CELIA  | CELIA@IG.COM       |
| JORGE  | JORGE@IG.COM.BR    |
| LILIAN | LILIAN@HOTMAIL.COM |
| ANA    | ANA@IG.COM         |
| CARLA  | CARLA@GMAIL.COM    |
+--------+--------------------+

/* DELETANDO REGISTROS COM A CLAUSULA DELETE */

-- NÃO FAÇA AGORA --
DELETE FROM CLIENTE; /* VAI DELETAR A TABELA INTEIRA MUITO CUIDADO! */


SELECT * FROM CLIENTE WHERE NOME = 'ANA';
+------+------+------------+----------+-----------+----------------------------------------------+
| NOME | SEXO | EMAIL      | CPF      | TELEFONE  | ENDERECO                                     |
+------+------+------------+----------+-----------+----------------------------------------------+
| ANA  | F    | ANA@IG.COM | 85548962 | 548556985 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO -SP |
+------+------+------------+----------+-----------+----------------------------------------------+

SELECT COUNT(*) FROM CLIENTE; -- FAZ ISSO PRIMEIRO = TOTAL 6
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+

SELECT COUNT(*) FROM CLIENTE 
WHERE NOME = 'ANA'; -- TOTAL DELETADO 1
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- RESTANTE 5
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+

SELECT 6 - 1; /* O BANCO TAMBÉM CONTA E NÃO ARMAZENA EM TABELA */

SELECT * FROM CLIENTE;
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| JOAO   | M    | JOAOA@IG.COM.BR    | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@IG.COM       | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | CARLA@GMAIL.COM    |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'4575-0048','RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

SELECT * FROM CLIENTE;
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| JOAO   | M    | JOAOA@IG.COM.BR    | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@IG.COM       | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | CARLA@GMAIL.COM    |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHENER    |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM'
WHERE EMAIL = 'CARLA@GMAIL.COM'
AND NOME = 'CARLA';
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| JOAO   | M    | JOAOA@IG.COM.BR    | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@IG.COM       | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | LILIAN@HOTMAIL.COM |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHENER    |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

DELETE FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM'; /*SE EU USAR ASSIM VAI DELETAR TODOS QUE ESTIVEREM COM EMAIL LILIAN@HOTMAIL.COM */

SELECT * FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM'; /* ANTES DE FAZER O DELETE FAÇA UM SELECT PARA VERIFICAR O QUE VOCÊ QUER DELETAR */
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHENER    |
| CARLA  | F    | LILIAN@HOTMAIL.COM |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - SAO PAULO -SP         |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

SELECT * FROM CLIENTE 
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM'; -- OR TRAZ TODO MUNDO COM PELO MENOS UMA DAS DUAS CONDICOES
+-------+------+--------------------+---------+----------+---------------------------------------+
| NOME  | SEXO | EMAIL              | CPF     | TELEFONE | ENDERECO                              |
+-------+------+--------------------+---------+----------+---------------------------------------+
| CARLA | F    | LILIAN@HOTMAIL.COM | 7745828 | 66587458 | SAMUEL SILVA - CENTRO - SAO PAULO -SP |
+-------+------+--------------------+---------+----------+---------------------------------------+


DELETE FROM CLIENTE 
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM'; -- TRAZ APENAS O REGISTRO QUE SATISFACA AS DUAS CONDICOES

SELECT * FROM CLIENTE;
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| JOAO   | M    | JOAOA@IG.COM.BR    | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@IG.COM       | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHENER    |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

/* ENTRANDO COM MAIS TELEFONES */

UPDATE CLIENTE 
SET TELEFONE = '97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

UPDATE CLIENTE 
SET TELEFONE = '22923110 - 97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT ENDERECO, COUNT(*) FROM CLIENTE
GROUP BY ENDERECO;



