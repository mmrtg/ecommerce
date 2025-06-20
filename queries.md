# Queries
## Recuperação simples com SELECT
_Pergunta: Quais são os nomes dos clientes e seus tipos?_
`SELECT nome, tipo_cliente
FROM clientes;`

## Filtro com WHERE
_Pergunta: Quais pedidos foram feitos por clientes PF com entregas em trânsito?_
`SELECT p.id_pedido, c.nome, e.status_entrega
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente
INNER JOIN entregas e ON p.id_entrega = e.id_entrega
WHERE c.tipo_cliente = 'PF' AND e.status_entrega = 'EM_TRANSITO';`

## Expressão derivada
_Pergunta: Qual o valor total de cada pedido incluindo um desconto de 10%?_
`SELECT 
    p.id_pedido,
    SUM(ip.preco_total) AS valor_original,
    SUM(ip.preco_total * 0.9) AS valor_com_desconto
FROM pedidos p
INNER JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido;`

## Ordenação com ORDER BY
_Pergunta: Liste os clientes por nome em ordem alfabética com seus totais de pedidos?_
`SELECT 
    c.nome,
    COUNT(p.id_pedido) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY c.nome ASC;`

## Condições de Filtro aos Grupos – HAVING
_Pergunta: Quais clientes têm mais de um pedido e valor total superior a 100?_
`SELECT 
    c.nome,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(ip.preco_total) AS valor_total
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
INNER JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY c.nome
HAVING COUNT(p.id_pedido) > 1 AND SUM(ip.preco_total) > 100;`

## Junções para Perspectiva Complexa
_Pergunta: Quais produtos foram comprados por clientes PF com entregas concluídas, mostrando detalhes de pagamento?_
`SELECT 
    c.nome AS nome_cliente,
    pr.nome_produto,
    ip.quantidade,
    fp.tipo_pagamento,
    e.status_entrega
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
INNER JOIN entregas e ON p.id_entrega = e.id_entrega
INNER JOIN formas_pagamento fp ON p.id_pagamento = fp.id_pagamento
INNER JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
INNER JOIN produtos pr ON ip.id_produto = pr.id_produto
WHERE c.tipo_cliente = 'PF' AND e.status_entrega = 'ENTREGUE'
ORDER BY c.nome, pr.nome_produto;`
