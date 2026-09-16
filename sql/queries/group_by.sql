-- ============================================================
-- 05 - GROUP BY
-- ============================================================

-- 1. Quantos clientes existem em cada estado?

SELECT
    state,
    count(customer_id)
from sales.customers
GROUP BY state


-- 2. Quantos clientes existem em cada cidade?

SELECT
    city,
    count(customer_id)
from sales.customers
GROUP BY city

-- 3. Qual é a renda média dos clientes de cada estado?

SELECT
    state,
    round(avg(income), 2) as renda_media
from sales.customers
GROUP BY state

-- 4. Qual é o score médio dos clientes de cada estado?

SELECT
    state,
    round(avg(score), 2) as score_media
from sales.customers
GROUP BY state

-- 5. Qual é a renda média dos clientes de cada
-- situação profissional?

SELECT
    professional_status,
    round(avg(income), 2) as renda_media
from sales.customers
GROUP BY professional_status

-- 6. Quantos produtos existem por marca?

SELECT
    count(product_id),
    brand
from sales.products
GROUP BY brand

-- 7. Qual é o preço médio dos produtos de cada marca?

SELECT
    round(avg(price), 2) as preco_media,
    brand
from sales.products
GROUP BY brand

-- 8. Qual é o maior preço de produto encontrado
-- em cada marca?

SELECT
    max(price),
    brand
from sales.products
GROUP BY brand

-- 9. Qual é o menor preço de produto encontrado
-- em cada marca?

SELECT
    min(price),
    brand
from sales.products
GROUP BY brand

-- 10. Quantos registros existem no funil para
-- cada loja?



-- 11. Quantos registros existem no funil para
-- cada produto?


-- 12. Quantos registros existem no funil para
-- cada cliente?