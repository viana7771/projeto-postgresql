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
    brand
from sales.products
GROUP BY brand
having price > (
    SELECT
        round(avg(price), 2)
    from sales.products
)

-- 6. Quais clientes possuem renda maior que a renda média
-- dos clientes do seu próprio estado?


-- 7. Qual produto possui o maior preço entre todos
-- os produtos?


-- 8. Quais produtos possuem o mesmo preço do produto
-- mais caro da base?


-- 9. Quais lojas possuem mais registros no funil
-- que a média de registros por loja?