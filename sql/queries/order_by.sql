-- ============================================================
-- 03 - ORDER BY
-- ============================================================

-- 1. O gerente comercial quer visualizar os clientes
-- ordenados da maior para a menor renda.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    income
from sales.customers
ORDER BY income desc

-- 2. O gerente quer visualizar os clientes
-- com os maiores scores primeiro.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    score
from sales.customers
ORDER BY score desc

-- 3. O setor de produtos quer visualizar os produtos
-- ordenados do mais caro para o mais barato.

SELECT
    product_id,
    price
from sales.products
ORDER BY price desc

-- 4. O setor de produtos quer visualizar os produtos
-- ordenados do mais barato para o mais caro.

SELECT
    product_id,
    price
from sales.products
ORDER BY price

-- 5. O gestor quer visualizar os 10 produtos
-- mais caros cadastrados.

SELECT
    product_id,
    price
from sales.products
ORDER BY price desc
limit 10

-- 6. O gestor quer visualizar os 10 clientes
-- com maior renda.

SELECT
    concat(
        first_name, ' ', last_name,
    ) as full_name,
    income
from sales.customers
ORDER BY income desc
limit 10

-- 7. O gestor quer visualizar os 10 clientes
-- com maior score.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    score
from sales.customers
ORDER BY score desc
limit 10

-- 8. O setor comercial quer visualizar os produtos
-- primeiro pela marca e depois pelo preço.

SELECT
    product_id,
    brand, 
    price
from sales.products
ORDER BY brand, price desc