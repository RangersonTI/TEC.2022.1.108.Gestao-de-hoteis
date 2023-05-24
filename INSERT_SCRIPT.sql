USE GESTAO_HOTEL
GO

/*USE [master]
GO
ALTER DATABASE [GESTAO_HOTEL] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
DROP DATABASE [GESTAO_HOTEL]
GO*/

---CRIA��O DE SCHEMA     Executar antes dos INSERT
CREATE SCHEMA CHECKIN;  
GO

CREATE SCHEMA CHECKOUT;  
GO

---CRIA��O DE SEQUENCE     Executar antes dos INSERT
CREATE SEQUENCE CHECKIN.COUNTBY1
    START WITH 1  
    INCREMENT BY 1 ;  
GO

CREATE SEQUENCE CHECKOUT.COUNTBY1
    START WITH 1  
    INCREMENT BY 1 ;  
GO 

--COMANDOS PARA INSER��O

--SEXO  --1�
INSERT INTO SEXO VALUES(1,'Feminino')
INSERT INTO SEXO VALUES(2,'Masculino')

-- CLIENTE  --7�
INSERT INTO CLIENTE VALUES('Marcos Antonio','19854267923',1,'1995-06-17','marcoant@hotmail.com','99981506471','Rua dos Jumentos')
INSERT INTO CLIENTE VALUES('Larissa Silva','95586257412',2,'1994-12-19','larissasilva@gmail.com','82963145789','Aveniva Presidente Dutra')
INSERT INTO CLIENTE VALUES('Larnivaldo Souza','48215974536',1,'1999-07-01','lsouza_23@hotmail.com','94982653415','Rua dos Jatob�s')

-- STATUS  --8�
INSERT INTO STATUS VALUES(1,'Dispon�vel')
INSERT INTO STATUS VALUES(2,'Ocupado')
INSERT INTO STATUS VALUES(3,'Reservado')
INSERT INTO STATUS VALUES(4,'Manuten��o')

-- CLASSE  --9�
INSERT INTO CLASSE VALUES(1,'Standard')
INSERT INTO CLASSE VALUES(2,'Master')
INSERT INTO CLASSE VALUES(3,'Deluxe')

--PAGAMENTO  --10�
INSERT INTO PAGAMENTO VALUES('Cart�o de Cr�dito')
INSERT INTO PAGAMENTO VALUES('Cart�o de D�bito')
INSERT INTO PAGAMENTO VALUES('� vista (Boleto)')
INSERT INTO PAGAMENTO VALUES('Dinheiro')
INSERT INTO PAGAMENTO VALUES('PIX')

--FUNCIONARIO  --2�
INSERT INTO FUNCIONARIO VALUES('08432576522','Administrador','admin@gmail.com','63984581203','Rua A1, 010','admin','admin',2,1,GETDATE())
INSERT INTO FUNCIONARIO VALUES('94587124563','Laila Silva','lailassantos@gmail.com','63991587425','Avenida dos Cedros, 45','Laila Santos','wads135',1,1,GETDATE())
INSERT INTO FUNCIONARIO VALUES('62518745259','Roziane Alves Santos','rozialvess@hotelogix.com','98995632547','Rua das Capivaras, 915','Roziane Alves','rozi3142',1,1,GETDATE())

--GRUPO_FUNCIONARIO  --3�
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Administrador')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Gerente')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Recepsionista')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Gorvenanta')

--PERMISSAO  --4�
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Visualizar funcion�rio') --1
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Cadastrar funcion�rio') --2
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Alterar funcion�rio') --3
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Excluir funcion�rio') --4
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Visualizar grupo de funcion�rio') --5
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Cadastrar grupo de funcion�rio') --6
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Alterar grupo de funcion�rio') --7
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Excluir grupo de funcion�rio') --8
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Visualizar cliente') --9
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Cadastrar cliente') --10
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Alterar cliente') --11
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Excluir cliente') --12
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Visualizar di�ria') --13
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Cadastrar di�ria') --14
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Alterar di�ria') --15
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Excluir di�ria') --16
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Visualizar quarto') --17
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Cadastrar quarto') --18
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Alterar quarto') --19
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Excluir quarto') --20
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Adicionar permiss�o a um grupo de funcion�rio') --21
INSERT INTO PERMISSAO(DESCRICAO)VALUES('Adicionar grupo de funcion�rio a um funcion�rio') --22

--PERMISSAO_GRUPO_FUNCIONARIO  --5�
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,1)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,2)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,3)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,4)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,5)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,6)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,7)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,8)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,9)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,10)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,11)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,12)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,13)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,14)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,15)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,16)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,17)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,18)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,19)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,20)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,21)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(1,22)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,1)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,2)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,3)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,4)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,5)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,6)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,7)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,8)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,9)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,10)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,11)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,12)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,13)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,14)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,15)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,16)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,17)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,18)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,19)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,20)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,21)
INSERT INTO PERMISSAO_GRUPO_FUNCIONARIO(ID_GRUPO_FUNCIONARIO,ID_PERMISSAO)VALUES(2,22)

--FUNCIONARIO_GRUPO_FUNCIONARIO  --6�
INSERT INTO FUNCIONARIO_GRUPO_FUNCIONARIO(ID_FUNCIONARIO,ID_GRUPO_FUNCIONARIO)VALUES(1,1)
INSERT INTO FUNCIONARIO_GRUPO_FUNCIONARIO(ID_FUNCIONARIO,ID_GRUPO_FUNCIONARIO)VALUES(2,2)

-- QUARTO  --11�
INSERT INTO QUARTO VALUES('01',1,'Quarto de solteiro',90.00,'A1',1)
INSERT INTO QUARTO VALUES('02',2,'Quarto de casal',150.00,'A1',1)
INSERT INTO QUARTO VALUES('03',3,'Quarto de casal',300.00,'A1',1)
INSERT INTO QUARTO VALUES('04',1,'Quarto de solteiro',100.00,'A1',1)
INSERT INTO QUARTO VALUES('05',3,'Quarto de casal',300.00,'A1',1)
INSERT INTO QUARTO VALUES('06',3,'Quarto de casal',200.00,'A1',1)
INSERT INTO QUARTO VALUES('07',2,'Quarto de solteiro',100.00,'A1',1)
INSERT INTO QUARTO VALUES('08',3,'Quarto de casal',300.00,'A1',1)
INSERT INTO QUARTO VALUES('09',2,'Quarto de casal',200.00,'A1',1)
INSERT INTO QUARTO VALUES('10',3,'Quarto de solteiro',100.00,'A1',1)
INSERT INTO QUARTO VALUES('11',1,'Quarto de casal',300.00,'A1',1)
INSERT INTO QUARTO VALUES('12',1,'Quarto de casal',200.00,'A1',1)


-- RESERVA  --12�
INSERT INTO RESERVA VALUES('2023-05-18','2023-05-20',500.00,1,2,2,1,'Carro preto placa: JK59L3',250.00,1,'2023-05-18','2023-05-20','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-05-19','2023-05-23',500.00,1,2,2,1,'Carro branco placa: L05LPS',250.00,2,'2023-05-19','2023-05-23','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-05-22','2023-05-31',500.00,1,2,2,1,'Carro azul placa: 203KSO',250.00,3,'2023-05-22','2023-05-31','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-05-22','2023-05-31',500.00,1,2,2,1,'Carro vermelho placa: OJE493K',250.00,4,'2023-05-22','2023-05-31','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-06-01','2023-06-03',500.00,2,1,1,1,'Carro prata placa: KLJ829',250.00,4,'2023-06-01','2023-06-03','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-05-19','2023-05-22',500.00,1,3,3,1,'Carro prata placa: PS5LKO',250.00,5,'2023-05-19','2023-05-22','Nada','Nada',GETDATE())
INSERT INTO RESERVA VALUES('2023-05-18','2023-05-20',500.00,1,2,2,1,'Carro preto placa: JK59L3',250.00,6,'2023-05-18','2023-05-20','Nada','Nada',GETDATE())

-- RESERVA_QUARTO  --13�
INSERT INTO RESERVA_QUARTO VALUES(1,1)
INSERT INTO RESERVA_QUARTO VALUES(2,2)
INSERT INTO RESERVA_QUARTO VALUES(3,3)
INSERT INTO RESERVA_QUARTO VALUES(4,4)


-----------------------------------------------------------------------------------------------------------------

--COMANDOS PARA SELECT
SELECT * FROM FUNCIONARIO
SELECT * FROM GRUPO_FUNCIONARIO
SELECT * FROM FUNCIONARIO_GRUPO_FUNCIONARIO
SELECT * FROM PERMISSAO_GRUPO_FUNCIONARIO
SELECT * FROM CLIENTE
SELECT * FROM SEXO
SELECT * FROM RESERVA_QUARTO
SELECT * FROM RESERVA
SELECT * FROM QUARTO
SELECT * FROM CLASSE
SELECT * FROM STATUS
SELECT * FROM PAGAMENTO
SELECT * FROM PERMISSAO
SELECT * FROM CONTAS_A_PAGAR
SELECT * FROM CONTAS_A_RECEBER

--SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE,Q.DESCRICAO,Q.VALOR_DIARIA,Q.ANDAR,Q.ID_STATUS FROM QUARTO Q
--INNER JOIN RESERVA R ON Q.ID = R.ID_QUARTO
--INNER JOIN CLASSE C ON Q.ID_CLASSE = C.ID
--WHERE  R.DT_ENT_RESERVA BETWEEN '2023-05-19' AND '2023-05-22' AND C.CLASSE = 'Standard'

SELECT * FROM RESERVA
SELECT * FROM QUARTO

SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE,Q.DESCRICAO,Q.VALOR_DIARIA,Q.ANDAR,Q.ID_STATUS FROM QUARTO Q
INNER JOIN RESERVA R ON Q.ID = R.ID_QUARTO
INNER JOIN CLASSE C ON Q.ID_CLASSE = C.ID
WHERE (DT_ENT_RESERVA BETWEEN '2023-05-17' AND '2023-05-31') AND (DT_SAI_RESERVA BETWEEN '2023-05-17' AND '2023-05-31')
AND C.CLASSE = 'Deluxe'


--SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE,Q.DESCRICAO,Q.VALOR_DIARIA,Q.ANDAR,Q.ID_STATUS FROM QUARTO Q
--INNER JOIN RESERVA R ON Q.ID = R.ID_QUARTO
--INNER JOIN CLASSE C ON Q.ID_CLASSE = C.ID
--WHERE DT_ENT_RESERVA = GETDATE();


SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE,Q.DESCRICAO,Q.VALOR_DIARIA,Q.ANDAR,Q.ID_STATUS FROM QUARTO Q
INNER JOIN RESERVA R ON Q.ID = R.ID_QUARTO
INNER JOIN CLASSE C ON Q.ID_CLASSE = C.ID
WHERE (DT_ENT_RESERVA !> '2023-05-19' OR DT_ENT_RESERVA != '2023-05-19') 
AND (DT_SAI_RESERVA !< '2023-05-20' OR DT_SAI_RESERVA != '2023-05-20') AND C.CLASSE = 'Standard'


SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE,Q.DESCRICAO,Q.VALOR_DIARIA,Q.ANDAR,Q.ID_STATUS FROM QUARTO Q
INNER JOIN RESERVA R ON Q.ID = R.ID_QUARTO
INNER JOIN CLASSE C ON Q.ID_CLASSE = C.ID
WHERE DT_ENT_RESERVA = GETDATE();


SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE, CLASSE.CLASSE, Q.DESCRICAO, Q.VALOR_DIARIA, Q.ANDAR, Q.ID_STATUS, S.STATUS
                                    FROM QUARTO Q
                                    INNER JOIN CLASSE ON CLASSE.ID = Q.ID_CLASSE
                                    INNER JOIN STATUS S ON S.ID = Q.ID_STATUS
                                    WHERE S.STATUS LIKE 'Dispon�vel'
-----------------------------------------------------------------------------------------------------------------

-- CODIGO INNER JOIN DE BUSCAR POR NOME 
SELECT D.ID, C.NOME, C.CPF, D.VALOR_TOTAL, D.DATA_ENTRADA, D.ID_CLIENTE, D.ID_FUNCIONARIO, D.ID_PAGAMENTO, D.DATA_SAIDA, D.DATA_ENTRADA
FROM DIARIA D
INNER JOIN CLIENTE C ON D.ID_CLIENTE = C.ID
WHERE C.NOME LIKE '%Lar%'

-- CODIGO INNER JOIN DE BUSCAR POR CPF 
SELECT D.ID, C.NOME, C.CPF, D.VALOR_TOTAL, D.DATA_ENTRADA, D.ID_CLIENTE, D.ID_FUNCIONARIO, D.ID_PAGAMENTO, D.DATA_SAIDA, D.DATA_ENTRADA
FROM DIARIA D
INNER JOIN CLIENTE C ON D.ID_CLIENTE = C.ID
WHERE C.CPF LIKE '19854267923'

--CODIGO INNER JOIN BUSCAR POR NOMEUSUARIO EM FUNCIONARIO
SELECT F.ID, F.NOME, F.ID_SEXO, SEXO.SEXO,F.NOME_USUARIO, GF.NOME_GRUPO, F.EMAIL ,F.SENHA ,F.CPF, F.ATIVO, F.DATA_NASCIMENTO,F.ENDERECO, F.CELULAR, F.ID_SEXO 
FROM FUNCIONARIO F
INNER JOIN FUNCIONARIO_GRUPO_FUNCIONARIO FGF ON F.ID = FGF.ID_FUNCIONARIO
INNER JOIN GRUPO_FUNCIONARIO GF ON FGF.ID_GRUPO_FUNCIONARIO = GF.ID
INNER JOIN SEXO ON SEXO.ID = F.ID_SEXO

SELECT QUARTO.ID, QUARTO.NUMERO, QUARTO.ID_CLASSE, QUARTO.DESCRICAO, QUARTO.VALOR_DIARIA, QUARTO.ANDAR, QUARTO.ID_STATUS FROM QUARTO
                                    INNER JOIN RESERVA_QUARTO ON QUARTO.ID = RESERVA_QUARTO.ID_QUARTO
                                    WHERE RESERVA_QUARTO.ID_RESERVA

SELECT GRUPO_FUNCIONARIO.ID, GRUPO_FUNCIONARIO.NOME_GRUPO FROM GRUPO_FUNCIONARIO
                                    INNER JOIN FUNCIONARIO_GRUPO_FUNCIONARIO ON GRUPO_FUNCIONARIO.ID = FUNCIONARIO_GRUPO_FUNCIONARIO.ID_GRUPO_FUNCIONARIO
                                    WHERE FUNCIONARIO_GRUPO_FUNCIONARIO.ID_FUNCIONARIO

SELECT D.ID, C.NOME, C.CPF, D.VALOR_TOTAL, D.DATA_ENTRADA, D.ID_CLIENTE,
                                    D.ID_FUNCIONARIO, D.ID_PAGAMENTO, D.DATA_SAIDA, D.DATA_ENTRADA
                                    FROM DIARIA D
                                    INNER JOIN CLIENTE C ON D.ID_CLIENTE = C.ID
                                    WHERE C.NOME LIKE '%Laris%'

SELECT Q.ID, Q.NUMERO, Q.ID_CLASSE, CLASSE.CLASSE, Q.DESCRICAO, Q.VALOR_DIARIA, Q.ANDAR, Q.ID_STATUS, S.STATUS
                                    FROM QUARTO Q
                                    INNER JOIN CLASSE ON CLASSE.ID = Q.ID_CLASSE
                                    INNER JOIN STATUS S ON S.ID = Q.ID_STATUS
                                    WHERE S.STATUS LIKE 'Dispon�vel'

------------------------------TRIGGER---------------------------------------
CREATE TRIGGER QUARTO_DIARIA
ON RESERVA_QUARTO
FOR INSERT 
AS 
BEGIN
DECLARE 
   @status INT,
   @codigo INT 
   SELECT @codigo= ID_QUARTO FROM inserted

 SELECT @status = 2 FROM QUARTO
 UPDATE QUARTO SET ID_STATUS = @status WHERE ID = @codigo
END
------------------------------DROP TRIGGER----------------------------------
DROP TRIGGER QUARTO_DIARIA



