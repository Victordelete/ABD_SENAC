/*FILE WITH SQL VIEWS OF BAR_PETISCARIA_ARV_DATABASE*/

/*VIEW SELECIONA OS CLIENTES COM SUAS INFORMAÇÕES DE ENDERECO*/
DROP VIEW IF EXISTS VIEW_SELECT_CLIENTE_COM_ENDERECO;
CREATE VIEW  VIEW_SELECT_CLIENTE_COM_ENDERECO AS
	SELECT CLIENTE.ID_CLIENTE, CLIENTE.NOME, CLIENTE.SOBRENOME, ENDERECO.ENDERECO, ENDERECO.NUMERO,
	BAIRRO.BAIRRO, CIDADE.CIDADE, ESTADO.ESTADO, PAIS.PAIS
	FROM CLIENTE
	INNER JOIN ENDERECO ON CLIENTE.ID_CLIENTE = ENDERECO.ID_CLIENTE
	INNER JOIN BAIRRO ON BAIRRO.ID_BAIRRO = ENDERECO.ID_BAIRRO
	INNER JOIN CIDADE ON CIDADE.ID_CIDADE = ENDERECO.ID_CIDADE
	INNER JOIN ESTADO ON ESTADO.ID_ESTADO = ENDERECO.ID_ESTADO
	INNER JOIN PAIS ON PAIS.ID_PAIS = ENDERECO.ID_PAIS;

/*VIEW SELECIONA OS CLIENTES CLIENTES COM SUAS INFORMAÇÕES DE CONTATO*/
DROP VIEW IF EXISTS VIEW_SELECT_CLIENTE_COM_CONTATOS;
CREATE VIEW VIEW_SELECT_CLIENTE_COM_CONTATOS AS
	SELECT CLIENTE.ID_CLIENTE, CLIENTE.NOME, CLIENTE.SOBRENOME, IFNULL(TELEFONE.TELEFONE, "SEM TELEFONE"), IFNULL(EMAIL.EMAIL, "SEM EMAIL")
	FROM CLIENTE
    INNER JOIN TELEFONE ON CLIENTE.ID_CLIENTE = TELEFONE.ID_CLIENTE
    INNER JOIN EMAIL ON CLIENTE.ID_CLIENTE = EMAIL.ID_CLIENTE;

/*VIEW SELECIONA OS CLIENTES COM SUAS INFORMAÇÕES DE ENDERECO*/
DROP VIEW IF EXISTS VIEW_SELECT_FUNCIONARIO_COM_ENDERECO;
CREATE VIEW  VIEW_SELECT_FUNCIONARIO_COM_ENDERECO AS
	SELECT FUNCIONARIO.ID_FUNCIONARIO, FUNCIONARIO.NOME, FUNCIONARIO.SOBRENOME, ENDERECO.ENDERECO, ENDERECO.NUMERO,
	BAIRRO.BAIRRO, CIDADE.CIDADE, ESTADO.ESTADO, PAIS.PAIS
	FROM FUNCIONARIO
	INNER JOIN ENDERECO ON FUNCIONARIO.ID_FUNCIONARIO = ENDERECO.ID_CLIENTE
	INNER JOIN BAIRRO ON BAIRRO.ID_BAIRRO = ENDERECO.ID_BAIRRO
	INNER JOIN CIDADE ON CIDADE.ID_CIDADE = ENDERECO.ID_CIDADE
	INNER JOIN ESTADO ON ESTADO.ID_ESTADO = ENDERECO.ID_ESTADO
	INNER JOIN PAIS ON PAIS.ID_PAIS = ENDERECO.ID_PAIS;

/*VIEW SELECIONA OS FUNCIONARIOS DA EMPRESA COM SUAS INFORMAÇÕES DE CONTATO*/
DROP VIEW IF EXISTS VIEW_SELECT_FUNCIONARIO_COM_CONTATOS;
CREATE VIEW VIEW_SELECT_FUNCIONARIO_COM_CONTATOS AS
	SELECT FUNCIONARIO.ID_FUNCIONARIO, FUNCIONARIO.NOME, FUNCIONARIO.SOBRENOME, TELEFONE.TELEFONE, EMAIL.EMAIL
	FROM FUNCIONARIO
    INNER JOIN TELEFONE ON FUNCIONARIO.ID_FUNCIONARIO = TELEFONE.ID_FUNCIONARIO
    INNER JOIN EMAIL ON FUNCIONARIO.ID_FUNCIONARIO = EMAIL.ID_FUNCIONARIO;

/*VIEW SELECIONA AS MOTOS DA EMPRESA*/
DROP VIEW IF EXISTS VIEW_MOTOS;
CREATE VIEW VIEW_MOTOS AS
	SELECT MOTO.ID_MOTO, MOTO.PLACA, MOTO.RENAVAN, MOTO.ANO_FABRICACAO, MOTO.DATA_COMPRA
    FROM MOTO;
    