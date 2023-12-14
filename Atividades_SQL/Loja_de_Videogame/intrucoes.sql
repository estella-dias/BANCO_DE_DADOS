*CRIAR TABELA PLATAFORMA*
CREATE TABLE "tb_plataforma" (
	"cod_plataforma" INTEGER,
	"nome" TEXT, 
	"fabricante" TEXT,
	PRIMARY KEY("cod_plataforma" AUTOINCREMENT)
	);




*CRIAR A TABELA JOGOS*
CREATE TABLE "tb_jogos"(
	"cod_jogo" INTEGER, 
	"titulo" TEXT, 
	"genero" TEXT, 
	"lancamento" DATE, 
	"cod_plataforma" INTEGER,
	PRIMARY KEY("cod_jogo" AUTOINCREMENT)
	CONSTRAINT "cod_plataforma" FOREIGN KEY("cod_plataforma") REFERENCES "tb_plataforma"("cod_plataforma")
	); 




*VALORES PARA TABELA PLATAFORMA*
INSERT INTO tb_plataforma (nome, fabricante)
VALUES 
	('Xbox', 'Microsoft'),
	('Nintendo Wii U', 'Nintendo'),
	('Xbox Series X|S', 'Microsoft'),
	('PlayStation 2', 'Sony'),
	('Sega Genesis/Mega Drive', 'TecToy'), 
	('Xbox One', 'Microsoft'),
	('PlayStation 4', 'Sony'), 
	('Nintendo DS', ' Nintendo'), 
	('Xbox 360', 'Microsoft'),
	('Atari', 'Hasbro Interactive');




*VALORES PARA TABELA JOGOS*
INSERT INTO tb_jogos (titulo, genero, lancamento, cod_plataforma)
VALUES
	('Genshin Impact', 'RPG', '28/09/2020', '2'),
	('Undertale', 'RPG', '15/09/2015', '4'), 
	('Silent Hill', 'Terror', '31/01/1999', '9'),
	('Resident Evil 4', 'Ação', '11/01/2005', '10'),
	('Celeste', 'Plataforma', '24/01/2018', '6'),
	('Minecraft', 'Aventura', '18/11/2011', '7'), 
	('Five Nigths', 'Terror', '28/07/2015', '3'),
	('The Legend of Zelda: Majora Mask', 'Ação', '27/04/2000', '3'),
	('Mario Kart 8', 'Corrida', '19/05/2014', '5'),
	('Mortal Kombat', 'Luta', '19/09/2023', '1');



*CONSULTAR O TIPO DO CONSOLE*
SELECT * FROM tb_jogos WHERE cod_plataforma = 6;

*CONSULTAR O GENÊRO ESPECIFICO*
SELECT titulo, genero, lancamento FROM tb_jogos WHERE genero = 'RPG';

*CONSULTAR INNER JOIN*
SELECT 
	tb_plataforma.nome,
	tb_plataforma.fabricante,
	tb_jogos.genero,
	tb_jogos.lancamento,
	tb_jogos.titulo
FROM
	tb_jogos
INNER JOIN
	tb_plataforma ON tb_plataforma.cod_plataforma = tb_jogos.cod_jogo; 



*MUDAR INFORMAÇÕES*
UPDATE tb_jogos
	SET lancamento = '09/09/2023'
	WHERE cod_jogo = 5;
UPDATE tb_jogos
	SET lancamento = '28/06/2000'
	WHERE cod_jogo = 3;
UPDATE tb_jogos
	SET lancamento = '03/90/1999'
	WHERE cod_jogo = 8;
UPDATE tb_jogos
	SET lancamento = '18/09/2025'
	WHERE cod_jogo = 2; 



*EXCLUIR JOGOS*
DELETE FROM tb_jogos WHERE cod_jogo = 5;
DELETE FROM tb_jogos WHERE cod_jogo = 8;
DELETE FROM tb_jogos WHERE cod_jogo = 10;
DELETE FROM tb_jogos WHERE cod_jogo = 4;