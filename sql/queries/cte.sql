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


-- 3. Crie uma CTE para calcular a quantidade de registros
-- do funil por loja.


-- 4. Utilizando uma CTE, identifique as lojas que possuem
-- quantidade de registros acima da média de todas as lojas.


-- 5. Crie uma CTE para calcular a quantidade de registros
-- do funil por produto e apresente os produtos mais
-- visualizados.


-- 6. Crie uma CTE para calcular a renda média por estado
-- e apresente os estados ordenados pela renda média.


-- 7. Crie uma CTE que reúna informações de clientes,
-- produtos e funil para realizar uma análise posterior.