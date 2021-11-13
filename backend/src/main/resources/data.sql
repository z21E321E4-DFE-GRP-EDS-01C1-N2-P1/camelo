INSERT INTO CATEGORIA (DESCRICAO) VALUES ('TODOS');
INSERT INTO CATEGORIA (DESCRICAO) VALUES ('BOLSAS');
INSERT INTO CATEGORIA (DESCRICAO) VALUES ('CALÇADOS');
INSERT INTO CATEGORIA (DESCRICAO) VALUES ('MASCULINO');
INSERT INTO CATEGORIA (DESCRICAO) VALUES ('FEMININO');
INSERT INTO CATEGORIA (DESCRICAO) VALUES ('UNISEX');


INSERT INTO PRODUTO (NOME, URL, PRECO, DESCONTO) VALUES ('CASACO', 'https://cea.vtexassets.com/arquivos/ids/9261147/Casaco-Feminino-Longo-Com-Bolsos-Kaki-9359741-Kaki_1.jpg?v=636924261557930000', 99.90, NULL);
INSERT INTO PRODUTO (NOME, URL, PRECO, DESCONTO) VALUES ('TENIS', 'https://static.dafiti.com.br/p/Nike-T%C3%AAnis-Nike-Wmns-Revolution-5-Preto-0154-6507015-1-zoom.jpg', 199.90, 30);
INSERT INTO PRODUTO (NOME, URL, PRECO, DESCONTO) VALUES ('BLUSA REGATA', 'https://static.hering.com.br//sys_master/images/hee/ha7/10179749019678.jpg?name=4AFU-WHMEN-C1', 30, 10);
INSERT INTO PRODUTO (NOME, URL, PRECO, DESCONTO) VALUES ('BLUSA', 'https://static.hering.com.br//sys_master/images/hc2/h77/10153179119646.jpg?name=4FB0-LM4EN-C1', 199.90, 30);

INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (1, 4);
INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (1, 5);
INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (1, 6);

INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (2, 4);

INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (3, 4);
INSERT INTO PRODUTO_CATEGORIAS (PRODUTO_ID, CATEGORIA_ID) VALUES (4, 5);


INSERT INTO ROLE (NAME) VALUES ('ROLE_ADMIN');
INSERT INTO ROLE (NAME) VALUES ('ROLE_CLIENTE');