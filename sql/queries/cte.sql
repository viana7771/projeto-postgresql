-- ============================================================
-- 09 - CTE
-- ============================================================

-- 1. Crie uma CTE para calcular a quantidade de clientes
-- por estado e depois mostre somente os estados com
-- maior quantidade de clientes.

with clientes_por_estado_cte as (
    select
        state,
        count(customer_id) as quantidade_clientes
    from sales.customers
    group by state
)
select
    state,
    quantidade_clientes
from clientes_por_estado_cte
order by quantidade_clientes desc
limit 5

-- 2. Crie uma CTE para calcular o preço médio dos produtos
-- por marca e depois mostre as marcas cujo preço médio
-- seja superior a R$ 50.000.

with preco_medio_por_marca_cte as (
    select
        brand,
        round(avg(price), 2) as preco_medio
    from sales.products
    group by brand
)
select
    brand,
    preco_medio
from preco_medio_por_marca_cte
where preco_medio > 50000
order by preco_medio desc

-- 3. Crie uma CTE para calcular a quantidade de registros
-- do funil por loja.

with registos_por_loja_cte as (
    select
        store_id,
        count(funnel_id) as quantidade_registros
    from sales.funnel
    group by store_id
)
select
    store_id,
    quantidade_registros
from registos_por_loja_cte
group by store_id


-- 4. Utilizando uma CTE, identifique as lojas que possuem
-- quantidade de registros acima da média de todas as lojas.


-- 5. Crie uma CTE para calcular a quantidade de registros
-- do funil por produto e apresente os produtos mais
-- visualizados.


-- 6. Crie uma CTE para calcular a renda média por estado
-- e apresente os estados ordenados pela renda média.


-- 7. Crie uma CTE que reúna informações de clientes,
-- produtos e funil para realizar uma análise posterior.