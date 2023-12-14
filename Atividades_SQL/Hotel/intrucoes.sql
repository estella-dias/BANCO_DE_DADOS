--CRIACAO DE TABELAS 
CREATE TABLE "tb_hospedes" (
	"hospede_id" INTEGER,
	"nome" TEXT NOT NULL,
	"documento" TEXT,
	"telefone" TEXT,
	PRIMARY KEY ("hospede_id" AUTOINCREMENT)
);

CREATE TABLE "tb_quarto" (
	"quarto_id" INTEGER,
	"tipo" TEXT NOT NULL,
	"preco_diaria" TEXT NOT NULL,
	"status" TEXT NOT NULL,
	PRIMARY KEY ("quarto_id" AUTOINCREMENT)
);

CREATE TABLE "tb_reserva" (
	"reserva_id" INTEGER,
	"hospede_id" INTEGER,
	"quarto_id" INTEGER,
	"data_entrada" TEXT NOT NULL,
	"data_saida" TEXT NOT NULL,
	PRIMARY KEY ("reserva_id" AUTOINCREMENT),
	CONSTRAINT "hospede_id" FOREIGN KEY("hospede_id") REFERENCES "tb_hospedes"("hospede_id"),
	CONSTRAINT "quarto_id" FOREIGN KEY("quarto_id") REFERENCES "tb_quarto"("quarto_id")
);

--POPULAÇÃO DE TABELAS
INSERT INTO tb_hospedes (nome, documento, telefone)
	VALUES
		('João Silva', '123.456.789-01', '(11) 98765-4321'),
		('Maria Oliveira', '987.654.321-00', '(22) 87654-1234'),
		('Carlos Pereira', '555.777.888-99', '(33) 76543-2109'),
		('Ana Souza', '111.222.333-44', '(44) 65432-1098'),
		('Pedro Santos', '999.888.777-66', '(55) 54321-0987'),
		('Lúcia Costa', '777.666.555-44', '(66) 43210-9876'),
		('Fernando Lima', '333.444.555-66', '(77) 32109-8765'),
		('Isabela Rodrigues', '222.111.444-55', '(88) 21098-7654');
        
        
INSERT INTO tb_quarto (tipo, preco_diaria, status)
	VALUES
		('Solteiro', '80.00', 'Disponível'),
       ('Casal', '120.00', 'Ocupado'),
       ('Duplo', '100.00', 'Disponível'),
       ('Suíte Luxo', '200.00', 'Manutenção'),
       ('Família', '150.00', 'Disponível'),
       ('Standard', '90.00', 'Ocupado'),
       ('Econômico', '70.00', 'Disponível'),
       ('VIP', '250.00', 'Disponível');
       
INSERT INTO tb_reserva (data_entrada, data_saida)
	VALUES
		('2023-01-15', '2023-01-20'),
		('2023-02-10', '2023-02-15'),
		('2023-03-05', '2023-03-10'),
		('2023-04-18', '2023-04-25'),
		('2023-05-12', '2023-05-18'),
		('2023-06-08', '2023-06-12'),
		('2023-07-20', '2023-07-25'),
		('2023-08-14', '2023-08-20'),
		('2023-09-03', '2023-09-08'),
		('2023-10-22', '2023-10-28');
        
        
        --CONSULTA PROCURANDO HOSPEDE COM DOCUMENTOS
SELECT hospede_id, nome, documento, telefone FROM tb_hospedes WHERE documento = '123.456.789-01';

--CONSULTA PROCURANDO HOSPEDE COM ID
SELECT hospede_id, nome, documento, telefone FROM tb_hospedes WHERE hospede_id = 2;

--CONSULTA PROCURANDO QUARTOS POR TIPO 
SELECT quarto_id, tipo, preco_diaria, status FROM tb_quarto WHERE tipo = 'Duplo';

--CONSULTA O MAIOR PREÇO 
SELECT quarto_id, tipo, preco_diaria, status
FROM tb_quarto
WHERE preco_diaria > '150';

--CONSULTAR A CONTAGEM DE QUARTOS DISPONIVEIS
	- TABELA HOSPEDES
SELECT status, COUNT(status)
FROM tb_quarto 'Disponivel';

--CONSULTA INNER JOIN
SELECT 
	tb_hospedes.nome,
	tb_hospedes.documento
FROM
	tb_reserva
INNER JOIN
	tb_hospedes ON tb_hospedes.hospede_id = tb_reserva.reserva_id; 


	-TABELA QUARTO
SELECT 
	tb_quarto.tipo,
	tb_quarto.preco_diaria,
	tb_quarto.status
FROM
	tb_reserva
INNER JOIN
	tb_quarto ON tb_quarto.quarto_id = tb_reserva.reserva_id; 



	-TABELA RESERVA
SELECT 
	tb_reserva.reserva_id,
	tb_reserva.data_entrada,
	tb_reserva.data_saida
FROM
	tb_quarto
INNER JOIN
	tb_reserva ON tb_reserva.reserva_id = tb_quarto.quarto_id; 


--CONSULTA COM SOMENTE REGISTROS DE STATUS OCUPADOS 
SELECT quarto_id, tipo, preco_diaria, status FROM tb_quarto WHERE status = 'Ocupado';


--MUDAR INFORMAÇOES TABELA HOSPEDES
UPDATE tb_hospedes
	SET documento = '111.222.333-44'
	WHERE hospede_id = 5

UPDATE tb_hospedes
	
	SET documento = '111.222.333-44'
	WHERE hospede_id = 4;

UPDATE tb_hospedes
	
	SET documento = '111.222.333-44'
	WHERE hospede_id = 3;

UPDATE tb_hospedes
	
	SET documento = '111.222.333-44'
	WHERE hospede_id = 2;

UPDATE tb_hospedes
	
	SET documento = '111.222.333-44'
	WHERE hospede_id = 1;


--MUDAR INFORMAÇOES TABELA QUARTOS

UPDATE tb_quarto
	
	SET status = 'Disponivel'
	WHERE quarto_id = 8;

UPDATE tb_quarto
	
	SET status = 'Disponivel'
	WHERE quarto_id = 7;

UPDATE tb_quarto
	
	SET status = 'Disponivel'
	WHERE quarto_id = 6;

UPDATE tb_quarto
	
	SET status = 'Disponivel'
	WHERE quarto_id = 5;

UPDATE tb_quarto
	
	SET status = 'Disponivel'
	WHERE quarto_id = 4;


--MUDAR INFORMAÇOES TABELA RESERVA

UPDATE tb_reserva
	
	SET data_entrada = '2023-01-15'
	WHERE reserva_id = 1;

UPDATE tb_reserva
	
	SET data_entrada = '2023-01-15'
	WHERE reserva_id = 2;

UPDATE tb_reserva
	
	SET data_entrada = '2023-01-15'
	WHERE reserva_id = 3;

UPDATE tb_reserva
	
	SET data_entrada = '2023-01-15'
	WHERE reserva_id = 4;
	
UPDATE tb_reserva
	
	SET data_entrada = '2023-01-15'
	WHERE reserva_id = 5;
