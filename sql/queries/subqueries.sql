-- ============================================================
-- 08 - SUBQUERIES
-- ============================================================

-- 1. Quais clientes possuem renda acima da renda média
-- de todos os clientes?

SELECT
    customer_id,
    concat(
        first_name, " ", last_name
    ) as full_name,
    income
from sales.customers
where income > (
    SELECT
        round(avg(income), 2)
    from sales.customers
);


-- 2. Quais clientes possuem score acima do score médio
-- de todos os clientes?

SELECT
    customer_id,
    concat(
        first_name, ' ', last_name
    ) as full_name,
    score
from sales.customers
where score > (
    SELECT
        round(avg(score), 2)
    from sales.customers
);

-- 3. Quais produtos possuem preço acima do preço médio
-- de todos os produtos?

SELECT
    product_id,
    brand,
    model,
    price
from sales.products
where price > (
    SELECT
        round(avg(price), 2)
    from sales.products
);

-- 4. Quais produtos possuem preço abaixo do preço médio
-- de todos os produtos?

SELECT
    product_id,
    brand,
    model,
    price
from sales.products
where price < (
    SELECT
        round(avg(price), 2)
    from sales.products
);


-- 5. Quais marcas possuem preço médio acima do preço
-- médio geral dos produtos?

SELECT
    brand,
    round(avg(price), 2) as preco_medio
from sales.products
GROUP BY brand
having avg(price) > (
    SELECT
        avg(price)
    from sales.products
)

-- 6. Quais clientes possuem renda maior que a renda média
-- dos clientes do seu próprio estado?

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    state,
    income
from sales.customers
GROUP BY customer_id
having avg(income) > (
    SELECT 
        avg(income)
    from sales.customers 
)

-- 7. Qual produto possui o maior preço entre todos
-- os produtos?

SELECT
    product_id,
    brand,
    model,
    model_year,
    price
from sales.products
where price = (
    SELECT
        max(price)
    from sales.products
)

-- 8. Quais produtos possuem o mesmo preço do produto
-- mais caro da base?

SELECT
    product_id,
    brand,
    model,
    model_year,
    price
from sales.products
where price = (
    SELECT
        max(price)
    from sales.products
)

-- 9. Quais lojas possuem mais registros no funil
-- que a média de registros por loja?

WITH registros_por_loja AS (
    SELECT
        store_id,
        COUNT(*) AS quantidade_registros
    FROM sales.funnel
    GROUP BY store_id
)

SELECT
    store_id,
    quantidade_registros
FROM registros_por_loja
WHERE quantidade_registros > (
    SELECT AVG(quantidade_registros)
    FROM registros_por_loja
);