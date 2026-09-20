INSERT INTO categoria (nome, descricao) VALUES ('Eletrônicos', 'Produtos eletrônicos');
INSERT INTO categoria (nome, descricao) VALUES ('Informática', 'Produtos de informática');
INSERT INTO categoria (nome, descricao) VALUES ('Celulares', 'Celulares e acessórios');
INSERT INTO categoria (nome, descricao) VALUES ('Casa', 'Produtos para casa');
INSERT INTO categoria (nome, descricao) VALUES ('Escritório', 'Produtos para escritório');

INSERT INTO produto (descricao, estoque, preco, categoria_id) VALUES ('Notebook', 10, 3500.00, 1);
INSERT INTO produto (descricao, estoque, preco, categoria_id) VALUES ('Teclado', 25, 120.00, 2);
INSERT INTO produto (descricao, estoque, preco, categoria_id) VALUES ('Celular', 15, 1800.00, 3);
INSERT INTO produto (descricao, estoque, preco, categoria_id) VALUES ('Liquidificador', 8, 250.00, 4);
INSERT INTO produto (descricao, estoque, preco, categoria_id) VALUES ('Cadeira de escritório', 12, 450.00, 5);

INSERT INTO cliente (nome, email, telefone) VALUES ('Ana Silva', 'ana@email.com', '18999990001');
INSERT INTO cliente (nome, email, telefone) VALUES ('Bruno Santos', 'bruno@email.com', '18999990002');
INSERT INTO cliente (nome, email, telefone) VALUES ('Carlos Oliveira', 'carlos@email.com', '18999990003');
INSERT INTO cliente (nome, email, telefone) VALUES ('Daniela Souza', 'daniela@email.com', '18999990004');
INSERT INTO cliente (nome, email, telefone) VALUES ('Eduardo Lima', 'eduardo@email.com', '18999990005');

INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-15 10:00:00', 'PENDENTE', 3500.00, 1);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-15 11:30:00', 'PAGO', 240.00, 2);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-16 09:15:00', 'PAGO', 1800.00, 3);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-16 14:00:00', 'CANCELADO', 250.00, 4);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-17 16:45:00', 'PENDENTE', 450.00, 5);

INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 3500.00, 1, 1);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (2, 120.00, 2, 2);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 1800.00, 3, 3);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 250.00, 4, 4);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 450.00, 5, 5);

INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (3500.00, '2026-09-15 10:05:00', 'APROVADO', 'PIX', 1);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (240.00, '2026-09-15 11:35:00', 'APROVADO', 'CARTAO', 2);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (1800.00, '2026-09-16 09:20:00', 'APROVADO', 'PIX', 3);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (250.00, '2026-09-16 14:05:00', 'CANCELADO', 'BOLETO', 4);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (450.00, '2026-09-17 16:50:00', 'PENDENTE', 'PIX', 5);