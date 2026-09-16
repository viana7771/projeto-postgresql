-- ============================================================
-- 02 - WHERE
-- ============================================================

-- 1. O marketing quer identificar todos os clientes
-- que moram no estado de São Paulo.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name
from sales.customers
WHERE state = 'SP'

-- 2. O setor comercial quer identificar clientes
-- com renda superior a R$ 10.000.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    income
from sales.customers
WHERE income > 10000

-- 3. O setor financeiro quer identificar clientes
-- com score superior a 700.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    score
from sales.customers
WHERE score > 700

-- 4. O setor comercial quer encontrar produtos
-- com preço superior a R$ 50.000.

SELECT
    product_id,
    brand,
    model,
    price
from sales.products
WHERE price > 50000

-- 5. O setor comercial quer encontrar produtos
-- com preço entre R$ 20.000 e R$ 50.000.

SELECT
    product_id,
    brand,
    model,
    price
from sales.products
WHERE price > 20000 
    and price < 50000

-- 6. O setor de marketing quer identificar clientes
-- que moram em uma determinada cidade.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    city
from sales.customers
WHERE city = 'GUARULHOS'

-- 7. A empresa quer identificar produtos de uma
-- determinada marca.

SELECT
    product_id,
    brand
from sales.products
WHERE brand = 'HYUNDAI'

-- 8. O setor comercial quer identificar clientes
-- que possuem uma determinada situação profissional.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    professional_status
from sales.customers
WHERE professional_status = 'businessman'

-- 9. O setor comercial quer encontrar clientes
-- com renda inferior a R$ 5.000 e score superior a 600.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    income,
    score
from sales.customers
WHERE income < 5000
    and score > 600

-- 10. O gestor quer identificar produtos de uma determinada
-- marca com preço superior a um determinado valor.

SELECT
    product_id,
    brand,
    price
from sales.products
WHERE brand = 'VOLKSWAGEN'
    and price > 100000