-- ============================================================
-- 01 - SELECT
-- ============================================================

-- 1. O setor comercial quer visualizar todos os clientes
-- cadastrados no sistema.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name
from sales.customers

-- 2. O setor comercial quer visualizar apenas o nome completo,
-- cidade e estado de cada cliente.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name,
    city,
    state
from sales.customers

-- 3. O setor de produtos quer visualizar todos os produtos
-- cadastrados, incluindo marca, modelo e preço.

SELECT
    product_id,
    brand,
    model,
    price
from sales.products

-- 4. A administração quer visualizar todas as lojas
-- cadastradas no sistema.

SELECT
    store_name
from sales.stores

-- 5. O setor de produtos quer visualizar somente:
-- marca, modelo e ano do modelo dos produtos.

SELECT
    brand,
    model,
    model_year
from sales.products

-- 6. O setor financeiro quer visualizar o nome dos clientes,
-- sua renda e seu score.

SELECT
    concat(
        first_name, ' ', last_name
    ) as full_name
    income,
    score
from sales.customers

-- 7. O setor comercial quer visualizar todas as informações
-- disponíveis sobre os registros do funil de vendas.

SELECT * 
from sales.funnel