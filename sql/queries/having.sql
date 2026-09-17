-- ============================================================
-- 06 - HAVING
-- ============================================================

-- 1. Quais estados possuem mais de 100 clientes?

SELECT
    state,
    count(customer_id)
from sales.customers
GROUP BY state
HAVING count(customer_id) > 100

-- 2. Quais cidades possuem mais de 50 clientes?

SELECT
    city,
    count(customer_id)
from sales.customers
GROUP BY city
HAVING count(customer_id) > 100

-- 3. Quais marcas possuem mais de 10 produtos?

SELECT
    brand,
    count(product_id)
from sales.products
GROUP BY brand
HAVING count(product_id) > 10

-- 4. Quais marcas possuem preço médio superior
-- a R$ 50.000?

SELECT
    brand,
    round(avg(price), 2) as preco_medio
from sales.products
GROUP BY brand
HAVING avg(price) > 50000

-- 5. Quais lojas possuem mais de 100 registros
-- no funil?


-- 6. Quais produtos aparecem mais de 50 vezes
-- no funil?


-- 7. Quais estados possuem renda média superior
-- a R$ 8.000?