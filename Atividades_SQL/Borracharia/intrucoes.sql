--CRIAÇÃO DA tb_cliente
CREATE TABLE "tb_cliente"(
	"cliente_id" INTEGER,
	"nome" TEXT,
	"cpf" TEXT,
	"telefone" TEXT,
	"cep" TEXT,
	"rua" TEXT,
	"bairro" TEXT,
	"cidade" TEXT,
	"estado" TEXT,
	PRIMARY KEY("cliente_id" AUTOINCREMENT)
);

--CRIAÇÃO DA tb_servico
CREATE TABLE "tb_servico"(
	"servico_id" INTEGER,
	"tipo_de_servico" TEXT,
	PRIMARY KEY("servico_id" AUTOINCREMENT)
);

--CRIAÇÃO DA tb_pneu
CREATE TABLE "tb_pneu"(
	"pneu_id" INTEGER,
	"numero_de_serie" NUMERIC,
	"marca" TEXT,
	"modelo" TEXT,
	"dimensoes" TEXT,
	"quantidade" NUMERIC,
	PRIMARY KEY("pneu_id" AUTOINCREMENT)
);

--CRIAÇÃO DA tb_pedido
CREATE TABLE "tb_pedido"(
	"pedido_id" INTEGER,
	"cliente_id" INTEGER,
	"servico_id" INTEGER,
	"pneu_id" INTEGER,
	"data_de_realizacao" TEXT,
	"valor" TEXT,
	PRIMARY KEY("pneu_id" AUTOINCREMENT),
	FOREIGN KEY ("cliente_id") REFERENCES tb_cliente ("cliente_id"),
	FOREIGN KEY ("servico_id") REFERENCES tb_servico ("servico_id"),
	FOREIGN KEY ("pneu_id") REFERENCES tb_pneu ("pneu_id")
);

--INSERÇÃO DE REGISTROS tb_cliente
INSERT INTO "tb_cliente" (nome, cpf, telefone, cep, rua, bairro, cidade, estado) 
VALUES 
		('João da Silva', '123.456.789-00', '(11) 9876-5432', '12345-678', 'Rua das Flores', 'Centro', 'São Paulo', 'SP'),
		('Maria Oliveira', '987.654.321-00', '(21) 8765-4321', '54321-876', 'Avenida Principal', 'Laranjeiras ', ' Rio de Janeiro', 'RJ'),
		('Pedro Santos', '456.789.123-00', '(31) 7654-3210', ' 67890-123', 'Rua da Praia', 'Praia Azul', 'Belo Horizonte', 'MG'),
		('Ana Pereira', ' 321.654.987-00', ' (51) 6543-2109', '98765-432', 'Rua das Palmeiras', 'Jardim das Flores', 'Porto Alegre', 'RS'),
		('Carlos Mendes', '654.321.987-00', '(41) 5432-1098', '23456-789', 'Avenida Central', 'Centro', 'Curitiba', ' PR');


--INSERÇÃO DE REGISTROS tb_servico
INSERT INTO "tb_servico" (tipo_de_servico) 
VALUES 
	('Manutenção Elétrica'),
	('Limpeza Residencial'),
	('Instalação de Rede'),
	('Consultoria em TI'),
	('Reparo Hidráulico');

--INSERÇÃO DE REGISTROS tb_pneu
INSERT INTO "tb_pneu" (numero_de_serie, marca, modelo, dimensoes, quantidade) 
VALUES 
	('ABC123', 'Goodyear', 'Eagle F1', '225/45R17', 100),
	('DEF456', 'Michelin', 'Pilot Sport 4', '245/40R18', 75),
	('GHI789', 'Bridgestone', 'Potenza RE71R', '205/50R15', 50),
	('JKL012', 'Continental', 'ExtremeContact Sport', '255/35R19', 120),
	('MNO345', 'Pirelli', 'P Zero', '235/55R18', 90);


--INSERÇÃO DE REGISTROS tb_pedido
INSERT INTO "tb_pedido" (data_de_realizacao, valor) 
VALUES 
		('2023-12-14', '150.50'),
		('2023-12-15', '200.75'),
		('2023-12-16', '120.30'),
		('2023-12-17', '180.90'),
		('2023-12-18', '300.25');