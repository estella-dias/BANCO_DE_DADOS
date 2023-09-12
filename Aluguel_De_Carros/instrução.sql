--CRIAÇÃO DE TABELA CLIENTE
CREATE TABLE "tb_cliente"(
	"cliente_id" INTEGER,
	"nome" TEXT NOT NULL,
	"cnh" TEXT,
	"telefone" TEXT,
	PRIMARY KEY("cliente_id" AUTOINCREMENT)
);

--CRIAÇÃO DE TABELA VEICULO
CREATE TABLE "tb_veiculo"(
	"veiculo_id" INTEGER,
	"modelo" TEXT NOT NULL,
	"ano" TEXT NOT NULL,
	"placa" TEXT NOT NULL,
	"disponibilidade" TEXT NOT NULL,
	PRIMARY KEY("veiculo_id" AUTOINCREMENT)
);

--CRIAÇÃO DE TABELA ALUGUEL
CREATE TABLE "tb_aluguel"(
	"aluguel_id" INTEGER,
	"cliente_id" TEXT,
	"veiculo_id" TEXT,
	"data_inicio" TEXT NOT NULL,
	"data_fim" TEXT NOT NULL,
	PRIMARY KEY("aluguel_id" AUTOINCREMENT),
	FOREIGN KEY ("cliente_id") REFERENCES tb_cliente ("cliente_id"),
	FOREIGN KEY ("veiculo_id") REFERENCES tb_veiculo ("veiculo_id")
);

--REGISTROS CLIENTE
INSERT INTO "tb_cliente" (nome, cnh, telefone) 
VALUES
		('Alex', '340919-143567', '9988-7245'),
		('Bailey', '45617-28937', '3542-77895'),
		('Casye', '66453-89215', '9825-1604'),
		('Blue', '816490-26510', '9651-3248'),
		('Dakota', '971537-48912', '9345-6178'),
		('Morgan', '12794-59108', '9934-5673'),
		('Jordan', '34827-018743', '9965-3782'),
		('Kai', '97253-47619', '1873-4563');
        
       
--REGISTROS VEICULO       
INSERT INTO "tb_veiculo" (modelo, ano, placa, disponibilidade)
VALUES
		('Fusca', '1999', 'AY2M59', 'Alugado'),
		('Gol', '2010', '2E0MNE', 'Alugado'),
		('Porshe', '2023', 'SAL76', 'Disponivel'),
		('VolksWagen', '2017', 'EN5O4', 'Alugado'),
		('Jeep Renegade', '2020', 'W89OP', 'Disponivel'),
		('Nissan KICKS', '2013', 'D4W2D', 'Alugado'),
		('Fiat Toro', '2019', 'Q21H3', 'Disponivel'),
		('Toyota Corolla', '2014', 'Q23GHA', 'Disponivel');        
        
--REGISTROS ALUGUEL
        INSERT INTO "tb_aluguel" (data_inicio, data_fim)
VALUES
		('2013/09/21', '2023/09/24'),
		('2018/07/31', '2019/04/12'),
		('2019/10/05', '2018/05/17'),
		('2014/02/15', '2017/08/14'),
		('2027/12/30', '2012/05/15'),
		('2018/11/18', '2015/01/02'),
		('2014/01/28', '2015/11/03'),
		('2017/06/31', '2011/02/26'),
		('2019/10/11', '2011/02/13'),
		('2014/11/13', '2011/09/24'); 

--CONSULTA DE TELEFONE
SELECT * FROM tb_cliente WHERE telefone;
SELECT * FROM tb_cliente WHERE telefone = '9988-7245';

--CONSULTA CNH
SELECT * FROM tb_cliente WHERE cnh;
SELECT * FROM tb_cliente WHERE cnh = '340919-143567';

--CONSULTAR CNH E NOMES 
SELECT * FROM tb_cliente WHERE cnh = "340919-143567";	
SELECT * FROM tb_cliente WHERE nome = "Alex";	

--CONSULTA DE ANO DO VEICULO
SELECT * FROM tb_veiculo WHERE ano;		

--CONSULTA DE ID
SELECT * FROM tb_veiculo WHERE veiculo_id = '1';		

--CCONSULTA DISPONIBILIDADE
SELECT * FROM tb_veiculo WHERE disponibilidade = 'Alugado';		



