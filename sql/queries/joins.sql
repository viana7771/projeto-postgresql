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

SELECT
    visit_id,
    concat(
        first_name, ' ', last_name
    ) as full_name,
    brand, 
    model
from sales.funnel as f
    left JOIN sales.customers as c
        on f.customer_id = c.customer_id
    left JOIN sales.products as p
        on f.product_id = p.product_id
     
-- 6. Quais produtos receberam visitas e em quais lojas
-- essas visitas ocorreram?

SELECT
    visit_id,
    visit_page_date,
    brand,
    model,
    store_name
from sales.funnel as f
    left JOIN sales.products as p
        on f.product_id =  p.product_id
    left JOIN sales.stores as s
        on f.store_id = s.store_id

-- 7. Quantos registros do funil existem por marca?

SELECT
    brand,
    count(visit_id)
from sales.funnel as f
    left JOIN sales.products as p
        on f.product_id = p.product_id
GROUP BY brand

-- 8. Quantos registros do funil existem por loja?

SELECT
    store_name,
    count(visit_id)
from sales.funnel as f
    left JOIN sales.stores as s
        on f.store_id = s.store_id
GROUP BY store_name

-- 9. Quantos clientes diferentes passaram pelo funil
-- de cada loja?

SELECT
    count(cpf),
    store_name
from sales.funnel as f
    left JOIN sales.customers as c
        on f.customer_id = c.customer_id
    left JOIN sales.stores as s
        on f.store_id = s.store_id
GROUP BY store_name

-- 10. Qual é a renda média dos clientes que passaram
-- pelo funil em cada loja?

SELECT
    store_name,
    round(avg(income), 2) as renda_media
from sales.funnel as f
    left JOIN sales.customers as c
        on f.customer_id = c.customer_id
    left JOIN sales.stores as s
        on f.store_id = s.store_id
GROUP BY store_name

-- 11. Qual é o preço médio dos produtos que foram
-- visualizados em cada loja?

SELECT
    store_name,
    round(avg(price), 2) as preco_medio
from sales.funnel as f
    left JOIN sales.products as p
        on f.product_id = p.product_id
    left JOIN sales.stores as s
        on f.store_id = s.store_id
GROUP BY store_name