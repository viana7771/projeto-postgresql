-- ============================================================
-- 04 - FUNÇÕES DE AGREGAÇÃO
-- ============================================================

-- 1. Quantos clientes estão cadastrados no sistema?

SELECT
    count(customer_id)
from sales.customers

-- 2. Quantos produtos estão cadastrados no sistema?

SELECT
    count(product_id)
from sales.products

-- 3. Quantas lojas estão cadastradas no sistema?

SELECT
    count(store_id)
from sales.stores

-- 4. Qual é a renda média dos clientes?

SELECT
    round(avg(income), 2) as media
from sales.customers

-- 5. Qual é o score médio dos clientes?

SELECT
    round(avg(score), 2) as media
from sales.customers

-- 6. Qual é a maior renda encontrada entre os clientes?

SELECT
    max(income)
from sales.customers

-- 7. Qual é a menor renda encontrada entre os clientes?

SELECT
    min(income)
from sales.customers

-- 8. Qual é o maior score encontrado entre os clientes?

SELECT
    max(score)
from sales.customers

-- 9. Qual é o menor score encontrado entre os clientes?

SELECT
    min(score)
from sales.customers

-- 10. Qual é o preço médio dos produtos?

SELECT
    round(avg(price), 2) as media
from sales.products

-- 11. Qual é o produto mais caro?

SELECT
    max(price)
from sales.products

-- 12. Qual é o produto mais barato?

SELECT
    min(price)
from sales.products

-- 13. Qual é a soma dos preços de todos os produtos
-- cadastrados?

SELECT
    sum(price)
from sales.products