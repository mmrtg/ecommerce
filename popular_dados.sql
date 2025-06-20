INSERT INTO clientes (nome, tipo_cliente, cpf_cnpj) VALUES
('João Silva', 'PF', '123.456.789-00'),
('Maria Oliveira', 'PF', '987.654.321-00'),
('Carlos Souza', 'PF', '456.789.123-00'),
('Ana Pereira', 'PF', '321.654.987-00'),
('Pedro Almeida', 'PF', '789.123.456-00'),
('Lucia Mendes', 'PF', '654.321.987-00'),
('Empresa ABC', 'PJ', '01.234.567/0001-90'),
('Empresa XYZ', 'PJ', '12.345.678/0001-90'),
('Loja 123', 'PJ', '23.456.789/0001-90'),
('Comércio Ltda', 'PJ', '34.567.890/0001-90'),
('Indústria XPTO', 'PJ', '45.678.901/0001-90'),
('Serviços AA', 'PJ', '56.789.012/0001-90'),
('João Filho', 'PF', '147.258.369-00'),
('Paula Costa', 'PF', '258.369.147-00'),
('Roberto Lima', 'PF', '369.147.258-00');

INSERT INTO formas_pagamento (id_cliente, tipo_pagamento, numero_referencia) VALUES
(1, 'CARTAO', '1234-5678-9012-3456'),
(2, 'PIX', 'PIX987654'),
(3, 'BOLETO', 'BOL123456');

INSERT INTO entregas (id_cliente, status_entrega, codigo_rastreio) VALUES
(1, 'EM_TRANSITO', 'TRK001'),
(2, 'PENDENTE', 'TRK002'),
(3, 'ENTREGUE', 'TRK003');

INSERT INTO produtos (nome_produto, preco_unitario) VALUES
('Camiseta Básica', 29.90),
('Calça Jeans', 99.90),
('Tênis Casual', 149.90),
('Moletom', 79.90),
('Boné', 39.90),
('Óculos de Sol', 89.90),
('Relógio', 199.90),
('Mochila', 129.90),
('Camisa Social', 69.90),
('Shorts', 49.90),
('Jaqueta', 159.90),
('Chinelo', 29.90),
('Meia', 19.90),
('Cinto', 39.90),
('Carteira', 59.90);

INSERT INTO pedidos (id_cliente, id_entrega, id_pagamento) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_total) VALUES
(1, 1, 2, 59.80),
(1, 2, 1, 99.90),
(2, 3, 1, 149.90),
(2, 4, 1, 79.90),
(3, 5, 3, 119.70),
(3, 6, 1, 89.90),
(4, 7, 1, 199.90),
(4, 8, 1, 129.90),
(5, 9, 2, 139.80),
(5, 10, 1, 49.90),
(6, 11, 1, 159.90),
(6, 12, 2, 59.80),
(7, 13, 3, 59.70),
(7, 14, 1, 39.90),
(8, 15, 2, 119.80);