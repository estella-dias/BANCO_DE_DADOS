--CRIAÇÃO DAS TABELAS
CREATE TABLE "tb_usuario" (
	"nome"	TEXT,
	"cpf" TEXT,
	"rg" TEXT, 
	"data_de_nascimento" TEXT, 
	"rua" TEXT,
	"numero" TEXT,
	"cep" TEXT,
	"bairro" TEXT,
	"cidade" TEXT,
	"estado" TEXT,
	"numero_matricula" INTEGER,
	PRIMARY KEY("numero_matricula" AUTOINCREMENT)
);

CREATE TABLE "tb_cursos" (
	"carga_horaria" TEXT,
	"id_curso" INTEGER,
	"nome_curso" TEXT,
	PRIMARY KEY("id_curso" AUTOINCREMENT)
);

CREATE TABLE "tb_professor" (
	"id_curso" INTEGER,
	"numero_registro" INTEGER,
	"nome" TEXT,
	"carga_horaria" TEXT,
	"espicialidade" TEXT,
	"contato" TEXT,
	CONSTRAINT "id_curso" FOREIGN KEY("id_curso") REFERENCES "tb_cursos"("id_curso"),
	PRIMARY KEY("numero_registro" AUTOINCREMENT)
);

CREATE TABLE "tb_matricula" (
	"id_curso" INTEGER,
	"numero_matricula" INTEGER,
	"nota1" TEXT,
	"nota2" TEXT,
	"nota3" TEXT,
	"nota4" TEXT,
	CONSTRAINT "id_curso" FOREIGN KEY("id_curso") REFERENCES "tb_cursos"("id_curso"),
	CONSTRAINT "numero_matricula" FOREIGN KEY("numero_matricula") REFERENCES "tb_usuario"("numero_matricula")
);

--POPULANDO TABELAS
INSERT INTO tb_usuario (nome, cpf, rg, data_de_nascimento, rua, numero, cep, bairro, cidade, estado)
VALUES
	('Maria', '146278913-42', '93.567.876.42', '09/11/1989', 'Rua,Pedrzo Azevedo', '20', '4516-0000', 'Aphaville 9', 'Barueri', 'SP'),
	('Giulia', '971548025-67', '68.265.875.45', '30/10/2003', 'Rua, Benecdito Azevedo', '409', '7857-0000', 'Jordanesia', 'Cajamar', 'SP'),
	('Heitor', '872357985-09', '56.863.092.47', '21/03/2005', 'Rua, Santo Agostinho', '85', '0934-0000', 'Arara', 'Jequié', 'BA'),
	('Clara', '761943018-06', '29.851.472.87', '16/06/2001', 'Rua, Gloria Maria', '900', '08241-0000', '10 Novwmbro', 'Sailt Lauren', 'MG'),
	('Bia', '013675498-06', '67.098.432.09', '30/04/2005', 'Rua, Pele', '86', '0834-0000', 'payol 1', 'Pirapora', 'SP');
    
INSERT INTO tb_cursos (carga_horaria, nome_curso)
VALUES
	('20 Horas', 'Administração'),
	('10 Horas', 'Informatica'),
	('8 Horas', 'Inglês');
    
INSERT INTO tb_professor (nome, carga_horaria, espicialidade, contato)
VALUES
	('Robison', '20 Horas', 'Administração', '11 99754398'),
	('Clarice', '10 Horas', 'Informática', '11 9752643'),
	('Roberta', '15 Horas', 'Inglês', '11 9876512');
    
    INSERT INTO tb_matricula (nota1, nota2, nota3, nota4)
	VALUES
		('7.00', '8.00', '3.00', '5.00'),
		('10.00', '5.00', '3.00', '5.00'),
		('0.00', '8.00', '3.00', '5.00'),
		('10.00', '8.00', '5.00', '5.00'),
		('0.00', '8.00', '3.00', '5.00');
    
    

