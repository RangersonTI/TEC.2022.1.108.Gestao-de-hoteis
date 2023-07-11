SELECT * FROM STATUS

DECLARE @Data date = '2023-05-25'

SELECT QUARTO.ID, QUARTO.NUMERO, RESERVA.DT_ENT_RESERVA, RESERVA.DT_SAI_RESERVA, RESERVA.DATA_CHECKIN, RESERVA.DATA_CHECKOUT,
		CASE
			WHEN RESERVA.ID IS NULL THEN '1' 
			WHEN RESERVA.DATA_CHECKIN <= @Data AND RESERVA.DATA_CHECKOUT >= @Data THEN '2'
			WHEN RESERVA.DT_ENT_RESERVA <= @Data AND RESERVA.DT_SAI_RESERVA >= @Data THEN '3'
			END AS ID_STATUS
		FROM QUARTO
		LEFT JOIN RESERVA_QUARTO ON QUARTO.ID = RESERVA_QUARTO.ID_QUARTO
		LEFT JOIN  RESERVA ON RESERVA_QUARTO.ID_RESERVA = RESERVA.ID
		LEFT JOIN STATUS ON QUARTO.ID_STATUS = STATUS.ID
		WHERE QUARTO.ID_STATUS <> 4


DECLARE @Data date = '2023-05-25'

SELECT	RESERVA.DATA_CHECKIN,
		CLIENTE.NOME,
		CLIENTE.CPF,
		FUNCIONARIO.NOME NOME_FUNCIONARIO,
		PAGAMENTO.FORMA_PAGAMENTO,
		RESERVA.VALOR_TOTAL,
		RESERVA.ID,
		RESERVA.DATA_CHECKOUT,
		QUARTO.VALOR_DIARIA,
		QUARTO.NUMERO,
		FUNCIONARIO.NOME AS Funcionario
		FROM RESERVA
		INNER JOIN RESERVA_QUARTO RQ ON RESERVA.ID = RQ.ID_RESERVA
		INNER JOIN CLIENTE ON RESERVA.ID_CLIENTE = CLIENTE.ID
		INNER JOIN FUNCIONARIO ON RESERVA.ID_FUNCIONARIO = FUNCIONARIO.ID
		INNER JOIN PAGAMENTO ON RESERVA.ID_PAGAMENTO = PAGAMENTO.ID
		INNER JOIN QUARTO ON RQ.ID_QUARTO = QUARTO.ID
		WHERE RESERVA.DATA_CHECKIN = @Data

SELECT
                                                    RESERVA.DATA_CHECKIN,
                                                    CLIENTE.NOME,
                                                    CLIENTE.CPF,
                                                    FUNCIONARIO.NOME NOME_FUNCIONARIO,
                                                    FUNCIONARIO.NOME_USUARIO,
                                                    PAGAMENTO.FORMA_PAGAMENTO,
                                                    RESERVA.VALOR_TOTAL,
                                                    RESERVA.ID,
                                                    RESERVA.DATA_CHECKOUT,
                                                    QUARTO.VALOR_DIARIA,
                                                    QUARTO.DESCRICAO,
                                                    QUARTO.NUMERO,
                                                    FUNCIONARIO.NOME AS Funcionario
                                                    FROM RESERVA
                                                    INNER JOIN RESERVA_QUARTO RQ ON RESERVA.ID = RQ.ID_RESERVA
                                                    INNER JOIN CLIENTE ON RESERVA.ID_CLIENTE = CLIENTE.ID
                                                    INNER JOIN FUNCIONARIO ON RESERVA.ID_FUNCIONARIO = FUNCIONARIO.ID
                                                    INNER JOIN PAGAMENTO ON RESERVA.ID_PAGAMENTO = PAGAMENTO.ID
                                                    INNER JOIN QUARTO ON RQ.ID_QUARTO = QUARTO.ID

UPDATE RESERVA SET DATA_CHECKIN = '2023-05-25', DATA_CHECKOUT = '2023-05-27' WHERE ID = 9;

CREATE TRIGGER T_ATUALIZA_STATUS
	ON RESERVA
	AFTER UPDATE 
AS
BEGIN

	DECLARE @IdReserva INT,
			@IdQuarto INT,
			@Status VARCHAR
	SELECT @IdReserva=ID, @IdQuarto=QUARTO,@Status=QUARTO.ID_STATUS FROM UPDATE
END
------------------------------DROP TRIGGER----------------------------------
DROP TRIGGER QUARTO_DIARIA


/*SELECT QUARTO.ID, QUARTO.NUMERO, QUARTO.ID_CLASSE,QUARTO.DESCRICAO,QUARTO.VALOR_DIARIA,QUARTO.ANDAR,
                                    CASE WHEN RESERVA.ID IS NULL THEN '1' ELSE '3' END AS ID_STATUS
                                    ,CLASSE.CLASSE FROM QUARTO
                                    LEFT JOIN RESERVA_QUARTO ON QUARTO.ID = RESERVA_QUARTO.ID_QUARTO
                                    LEFT JOIN  RESERVA ON RESERVA_QUARTO.ID_RESERVA = RESERVA.ID AND RESERVA.DT_ENT_RESERVA <= @Data AND RESERVA.DT_SAI_RESERVA >= @Data
                                    LEFT JOIN CLASSE ON QUARTO.ID_CLASSE = CLASSE.ID
                                    WHERE QUARTO.ID_STATUS <> 4*/

DECLARE @Data date = '2023-05-25'

SELECT QUARTO.ID, QUARTO.NUMERO, QUARTO.ID_CLASSE,QUARTO.DESCRICAO,QUARTO.VALOR_DIARIA,QUARTO.ANDAR,
		CASE
			WHEN RESERVA.ID IS NULL THEN '1'
			WHEN RESERVA.DATA_CHECKIN <= @Data AND RESERVA.DATA_CHECKOUT >= @Data THEN '2'
			WHEN RESERVA.DT_ENT_RESERVA <= @Data AND RESERVA.DT_SAI_RESERVA >= @Data THEN '3'
			ELSE '5'
			END AS ID_STATUS
		,CLASSE.CLASSE FROM QUARTO
		LEFT JOIN CLASSE ON QUARTO.ID_CLASSE = CLASSE.ID
		LEFT JOIN RESERVA_QUARTO ON QUARTO.ID = RESERVA_QUARTO.ID_QUARTO
		LEFT JOIN  RESERVA ON RESERVA_QUARTO.ID_RESERVA = RESERVA.ID
		LEFT JOIN STATUS ON QUARTO.ID_STATUS = STATUS.ID
		WHERE QUARTO.ID_STATUS <> 4