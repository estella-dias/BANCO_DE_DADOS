--CRIAÇÃO DE TABELAS
CREATE TABLE "tb_passageiro" (
	"id_passageiro"	INTEGER,
	"nome"	TEXT,
	"cpf"	TEXT,
	"data_nascimento"	TEXT,
	"telefone"	TEXT,
	"endereco"	TEXT,
	"reservas"	TEXT,
	PRIMARY KEY("id_passageiro" AUTOINCREMENT)
);

CREATE TABLE "tb_voo" (
	"cod_identificacao"	INTEGER,
	"id_passageiro"	INTEGER,
	"horarios"	TEXT,
	"data_de_partida"	TEXT,
	"data_de_chegada"	TEXT,
	"tipo_de_aviao"	TEXT,
	"assentos_reservados"	TEXT,
	CONSTRAINT "id_passageiro" FOREIGN KEY("id_passageiro") REFERENCES "tb_passageiro"("id_passageiro"),
	PRIMARY KEY("id_passageiro" AUTOINCREMENT)
);

--POPULAÇÃO DE TABELAS
INSERT INTO tb_passageiro (nome, cpf, data_nascimento, telefone, endereco, reservas)
VALUES
	('Emanuel', '467519087-09', '09/02/1989', '11 9873276', 'Acidez rodrigues', '2 poltronas'),
	('Mariestella', '467519087-09', '19/03/1965', '11 9873276', 'Acidez rodrigues', '2 poltronas'),
	('Julia', '467519087-09',  '25/03/1965','11 9873276', 'Acidez rodrigues', '2 poltronas'),
	('Marta', '467519087-09',  '10/03/1965','11 9873276', 'Acidez rodrigues', '2 poltronas'),
	('Daniela', '467519087-09',  '30/03/1965','11 9873276', 'Acidez rodrigues', '2 poltronas');
    
INSERT INTO tb_voo (horarios, data_de_partida, data_de_chegada, tipo_de_aviao, assentos_reservados)
VALUES
	('10h AM', '02/03/2018', '05/03/2018', 'GOL', 'A2'),
	('22h PM', '05/03/2018', '07/03/2018', 'AZUL', 'B4'),
	('13h PM', '12/03/2018', '13/03/2018', 'LATAM', 'F9'),
	('9h AM', '02/03/2018', '05/03/2018', 'AZUL', 'A2'),
	('16h PM', '02/03/2018', '05/03/2018', 'GOL', 'A2');




