--CRIAÇÃO DE TABELAS
CREATE TABLE "tb_cliente"(
	"cliente_id" INTEGER,
	"nome" TEXT,
	"cpf" TEXT,
	"telefone" TEXT,
	"endereco" TEXT,
	PRIMARY KEY("cliente_id" AUTOINCREMENT)
);

CREATE TABLE "tb_flores"(
	"flor_id" INTEGER,
	"nome_cientifico" TEXT,
	"nome_popular" TEXT,
	"preco" TEXT,
	"quantidade" TEXT,
	"cores_disponiveis" TEXT,
	PRIMARY KEY("flor_id" AUTOINCREMENT)
);

CREATE TABLE "tb_pedidos"(
	"pedido_id" INTEGER,
	"cliente_id" INTEGER,
	"flor_id" INTEGER,
	"data_de_realizacao" TEXT,
	"valor_total" TEXT,
	PRIMARY KEY("pedido_id" AUTOINCREMENT),
	CONSTRAINT "cliente_id" FOREIGN KEY("cliente_id") REFERENCES "tb_cliente"("cliente_id"),
	CONSTRAINT "flor_id" FOREIGN KEY("flor_id") REFERENCES "tb_flores"("flor_id")
);


--POPULAÇÃO DE TABELAS
INSERT INTO "tb_cliente" (nome, cpf, telefone, endereco)
	VALUES
		('Elisa', '12647803-01', '(11) 93625364', 'Rua. Mineirão Alves'),
		('Gabriel', '12639803-01', '(11) 72625364', 'Rua. Prates'),
		('Vinicios', '19247803-01', '(11) 65625364', 'Rua. Teodoro Romão'),
		('Katia', '10947803-01', '(11) 76625364', 'Rua. Lua nova'),
		('Camila', '32647803-01', '(11) 08625364', 'Rua. São José'); 
        
INSERT INTO "tb_flores" (nome_cientifico, nome_popular, preco, quantidade, cores_disponiveis)
	VALUES
	('Rosa sylvatica', 'Rosa Vermelha', '12.99', '50', 'Vermelha'),
	('Tulipa fantastica', 'Tulipa Roxa', '8.75', '30', 'Roxa'),
	('Lirio exuberante', 'Lírio Branco', '15.50', '20', 'Branca'),
	('Girassol radiante', 'Girassol Amarelo', '5.25', '40', 'Amarela'),
	('Orquidea majestosa', 'Orquídea Azul', '20.00', '15', 'Azul');
    
    INSERT INTO "tb_pedidos" (data_de_realizacao, valor_total)
	VALUES
	('2023-12-12', '150.75'),
    ('2023-12-13', '200.50'),
    ('2023-12-14', '75.25'),
    ('2023-12-15', '300.00');
