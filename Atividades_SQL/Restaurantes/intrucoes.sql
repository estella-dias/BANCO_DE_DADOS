--CRIAÇÃO DE TABELAS

CREATE TABLE "tb_produtos"(
	"produto_id" INTEGER,
	"nome" TEXT NOT NULL,
	"tipo" TEXT,
	"preco" REAL NOT NULL,
	"descricao" TEXT,
	PRIMARY KEY("produto_id" AUTOINCREMENT)
);

CREATE TABLE "tb_mesas"(
	"mesa_id" INTEGER,
	"numero" NUMERIC NOT NULL,
	"capacidade" NUMERIC,
	PRIMARY KEY("mesa_id" AUTOINCREMENT)
);

CREATE TABLE "tb_pedidos"(
	"pedido_id" INTEGER,
	"mesa_id" INTEGER,
	"produto_id" INTEGER,
	"quantidade" NUMERIC,
	"total" REAL NOT NULL,
	PRIMARY KEY("pedido_id" AUTOINCREMENT),
	FOREIGN KEY ("mesa_id") REFERENCES tb_mesas ("mesa_id"),
	FOREIGN KEY ("produto_id") REFERENCES tb_produtos ("produto_id")


--INSERIR REGISTROS

INSERT INTO "tb_produtos" (nome, tipo, preco, descricao) 
VALUES
		('Frango à Parmegiana', 'Prato Principal', 'R$35,00', 'Frango à Parmegiana é um prato italiano que consiste em peito de frango empanado, coberto com molho de tomate e queijo derretido, geralmente servido com espaguete.'),
		('Sushi de Salmão', 'Sushi', 'R$22,00', 'Sushi de salmão é um prato japonês feito com arroz de sushi, fatias de salmão fresco e envolto em algas nori, geralmente servido com molho de soja e wasabi.'),
		('Salada Caesar', 'Salada', 'R$18,00', 'A Salada Caesar é uma salada clássica composta por alface romana, croutons, queijo parmesão ralado e molho Caesar, geralmente servida com pedaços de frango grelhado.'),
		('Tacos de Carne', 'Tacos', 'R$12,00', 'Tacos de carne são pratos mexicanos feitos com tortilhas de milho ou trigo recheadas com carne grelhada, cebola, coentro, salsa e guacamole.'),
		('Risoto de Cogumelos', ' Risoto', 'R$28,00', 'Risoto de cogumelos é um prato italiano que consiste em arroz cozido lentamente em caldo de legumes, misturado com cogumelos, cebola, alho e queijo parmesão.'),
		('Hambúrguer Clássico', 'Sanduíche', 'R$30,00', 'Nosso hambúrguer clássico é feito com carne suculenta, queijo derretido, alface crocante, tomate e molho especial, tudo servido em um pão macio e tostado. Acompanha batatas fritas crocantes. Uma opção rápida e deliciosa para os amantes de hambúrguer.'),
		('Tacos de Carne Asada', ' Mexicano', 'R$24,99', 'Experimente a autêntica comida mexicana com nossos tacos de carne asada. A carne é marinada em temperos tradicionais, grelhada à perfeição e servida em tortilhas de milho quentinhas. Acompanha guacamole, salsa e feijão preto.'),
		(' Acarajé', 'Petisco', 'R$9,50', 'O acarajé é um quitute típico da Bahia, feito com massa de feijão-fradinho frita em azeite de dendê. É recheado com vatapá (um creme de camarão, pão e castanhas) e camarões secos. Uma iguaria saborosa e picante.');
		
INSERT INTO "tb_mesas" (numero, capacidade) 
VALUES 
		(1, 3),
		(2, 4),
		(3, 2),
		(4, 6),
		(5, 9),
		(6, 3),
		(7, 7),
		(8, 5); 


INSERT INTO "tb_pedidos" (quantidade, total) 
VALUES 
		(1, 'R$12,00'),
		(2, 'R$44,00'),
		(2, 'R$56,00'),
		(2, 'R$19,00'),
		(3, 'R$90,00'),
		(4, 'R$140,00'),
		(5, 'R$175,00'),
		(6, 'R$149,94'),
		(7, 'R$126,00'),
		(8, 'R$144,00');


--CONSULTAS 
SELECT * FROM tb_produtos WHERE tipo = 'Tacos';

SELECT * FROM tb_mesas WHERE numero = 2;

SELECT nome, tipo, preco FROM tb_produtos 

SELECT * FROM tb_mesas WHERE numero = 5;

SELECT * FROM tb_mesas WHERE capacidade > 6;

--CONSULTA COM INNER JOIN 
SELECT
	tb_produtos.nome,
	tb_produtos.tipo,
	tb_produtos.preco,
	tb_mesas.numero,
	tb_mesas.capacidade,
	tb_pedidos.pedido_id,
	tb_pedidos.quantidade,
	tb_pedidos.total
FROM
	tb_pedidos
INNER JOIN
	tb_produtos ON tb_produtos.produto_id = tb_pedidos.produto_id
INNER JOIN
	tb_mesas ON tb_mesas.mesa_id = tb_mesas.mesa_id

WHERE tb_pedidos.total = 'R$56,00';

WHERE tb_pedidos.total > '20';


--MUDAR INFORMAÇÕES tb_mesas
UPDATE tb_mesas
SET capacidade = '10'
WHERE mesa_id = 5;

UPDATE tb_mesas
SET capacidade = '18'
WHERE mesa_id = 4;

UPDATE tb_mesas
SET capacidade = '28'
WHERE mesa_id = 3;

UPDATE tb_mesas
SET capacidade = '7'
WHERE mesa_id = 2;

UPDATE tb_mesas
SET capacidade = '11'
WHERE mesa_id = 1;

--MUDAR INFORMAÇÕES tb_produtos
UPDATE tb_produtos
SET nome = 'Feijoada'
WHERE produto_id = 1;

UPDATE tb_produtos
SET nome = 'Moqueca de Peixe'
WHERE produto_id = 2;

UPDATE tb_produtos
SET nome = 'Coxinha'
WHERE produto_id = 3;

UPDATE tb_produtos
SET nome = 'Tapioca de Queijo Coalho'
WHERE produto_id = 4;

UPDATE tb_produtos
SET nome = 'Hambúrguer Clássico'
WHERE produto_id = 5;

--MUDAR INFORMAÇÕES tb_pedidos
UPDATE tb_pedidos
SET total = 'R$22,00'
WHERE produto_id = 1;

UPDATE tb_pedidos
SET total = 'R$33,00'
WHERE produto_id = 2;

UPDATE tb_pedidos
SET total = 'R$44,00'
WHERE produto_id = 3;
	
UPDATE tb_pedidos
SET total = 'R$55,00'
WHERE produto_id = 4;

UPDATE tb_pedidos
SET total = 'R$66,00'
WHERE produto_id = 5;


count - Contar
SELECT count() FROM tb_pedidos WHERE  quantidade = 2 OR quantidade = 5;

sum - Somar
SELECT sum(numero) FROM tb_mesas;

BETWEEN - Entre(intervalo)
SELECT * 
FROM tb_produtos  
WHERE produto_id BETWEEN 2 AND 5;

ORDER BY - Ordenar
SELECT * FROM tb_pedidos
ORDER BY mesa_id DESC