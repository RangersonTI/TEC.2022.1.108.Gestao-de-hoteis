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

--COMANDOS PARA INSER��O

--SEXO
INSERT INTO SEXO VALUES(1,'Feminino')
INSERT INTO SEXO VALUES(2,'Masculino')
-- CLIENTE
INSERT INTO CLIENTE VALUES(2,'Marcos Antonio','19854267923',1,'1995-06-17','marcoant@hotmail.com','99981506471','Rua dos Jumentos')
INSERT INTO CLIENTE VALUES(3,'Larnivaldo Souza','48215974536',1,'1999-07-01','lsouza_23@hotmail.com','94982653415','Rua dos Jatob�s')

-- DIARIA
INSERT INTO DIARIA VALUES(1,500.30,'2022-08-09',1,1,2,'2022-08-17')
INSERT INTO DIARIA VALUES(2,1500.30,'2022-09-02',2,1,1,'2022-09-26')
INSERT INTO DIARIA VALUES(3,600.30,'2022-12-15',1,2,1,'2023-01-02')
INSERT INTO DIARIA VALUES(4,600.30,'2022-12-15',1,2,1,'2023-01-02')
INSERT INTO DIARIA VALUES(5,5000.82,'2022-10-13',3,2,2,'2022-11-13')

--PAGAMENTO
INSERT INTO PAGAMENTO VALUES(1,'Cart�o de credito')
INSERT INTO PAGAMENTO VALUES(2,'A v�sta (Boleto)')

--FUNCIONARIO
INSERT INTO FUNCIONARIO VALUES('000000000','Administrador','admin@gmail.com','0000000-0000','Rua A1, 010','admin','admin',1,1,GETDATE())

--GRUPO_FUNCIONARIO
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Administrador')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Gerente')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Recepsionista')
INSERT INTO GRUPO_FUNCIONARIO(NOME_GRUPO)VALUES('Gorvenanta')

--PERMISSAO
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

--PERMISSAO_GRUPO_FUNCIONARIO
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

--FUNCIONARIO_GRUPO_FUNCIONARIO
INSERT INTO FUNCIONARIO_GRUPO_FUNCIONARIO(ID_FUNCIONARIO,ID_GRUPO_FUNCIONARIO)VALUES(1,1)


--COMANDOS PARA SELECT
SELECT * FROM FUNCIONARIO
SELECT * FROM SEXO
SELECT * FROM QUARTO
SELECT * FROM CLASSE
SELECT * FROM STATUS
SELECT * FROM GRUPO_FUNCIONARIO
SELECT * FROM FUNCIONARIO_GRUPO_FUNCIONARIO
SELECT * FROM PERMISSAO
SELECT * FROM PERMISSAO_GRUPO_FUNCIONARIO

-- STATUS
INSERT INTO STATUS VALUES(1,'Desocupado')

-- CLASSE
INSERT INTO CLASSE VALUES(1,'Suite')
-- QUARTO 
INSERT INTO QUARTO VALUES(1,1,1,'Quarto de casal',90.00,1)

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