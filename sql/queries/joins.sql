-- ============================================================
-- 07 - JOINS
-- ============================================================

-- 1. O setor comercial quer visualizar cada registro
-- do funil junto com o nome do cliente correspondente.

SELECT
    visit_id,
    concat(
        first_name, ' ', last_name
    ) as full_name,
    state,
    city,
    income,
    score
from sales.funnel as f 
    left JOIN sales.customers as s 
    on f.customer_id = s.customer_id

-- 2. O setor comercial quer visualizar cada registro
-- do funil junto com as informações do produto.

SELECT
    visit_id,
    brand,
    model,
    model_year,
    price
from sales.funnel as f 
    left JOIN sales.products as p
    on f.product_id = p.product_id 

-- 3. O gestor quer visualizar cada registro do funil
-- junto com a loja correspondente.

SELECT
    visit_id,
    store_name
from sales.funnel as f
    left JOIN sales.stores as s
    on f.store_id = s.store_id

-- 4. O gestor quer visualizar os registros do funil
-- contendo informações do cliente, produto e loja.

SELECT
    visit_id,
    concat(
        first_name, ' ', last_name
    ) as full_name,
    state,
    income,
    score,
    brand,
    model,
    model_year,
    price,
    store_name
from sales.funnel as f
    JOIN sales.customers as c
        on f.customer_id = c.customer_id
    JOIN sales.products as p
        on f.product_id = p.product_id
    JOIN sales.stores as s
        on f.store_id = s.store_id

-- 5. Quais clientes aparecem no funil de vendas
-- e quais produtos eles visualizaram?


-- 6. Quais produtos receberam visitas e em quais lojas
-- essas visitas ocorreram?


-- 7. Quantos registros do funil existem por marca?


-- 8. Quantos registros do funil existem por loja?


-- 9. Quantos clientes diferentes passaram pelo funil
-- de cada loja?


-- 10. Qual é a renda média dos clientes que passaram
-- pelo funil em cada loja?


-- 11. Qual é o preço médio dos produtos que foram
-- visualizados em cada loja?