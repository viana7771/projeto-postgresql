* [ ] 

```ignore
# PostgreSQL - Estudos e Prática de SQL

Projeto de estudos e análise de dados utilizando PostgreSQL, com foco em consultas SQL,
relacionamentos entre tabelas e extração de informações para apoio à análise.

O objetivo é documentar minha evolução na utilização de bancos de dados relacionais,
explorando consultas SQL, relacionamentos entre tabelas e análise de dados.

## Tecnologias

- PostgreSQL
- pgAdmin 4
- SQL
- Git
- GitHub

## Banco de dados

O projeto utiliza uma base de dados relacionada a vendas, contendo informações
sobre produtos, lojas e clientes/jornada de compra.

### Principais tabelas

- `products`
- `stores`
- `funnel`

## Conteúdos estudados

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN
- Subqueries
- Funções de agregação
- Operadores
- Filtros e condições
- Manipulação de dados

## Estrutura do projeto

```text
sales
├── customers
│   ├── customer_id
│   ├── cpf
│   ├── first_name
│   ├── last_name
│   ├── state
│   ├── city
│   ├── birth_date
│   ├── income
│   ├── score
│   ├── professional_status
│   ├── email
│   └── mobile
│
├── funnel
│   ├── visit_id
│   ├── customer_id
│   ├── store_id
│   ├── product_id
│   ├── visit_page_date
│   ├── add_to_cart_date
│   ├── start_checkout_date
│   ├── finish_checkout_date
│   ├── paid_date
│   └── discount
│
├── products
│   ├── product_id
│   ├── brand
│   ├── model
│   ├── model_year
│   └── price
│
└── stores
    ├── store_name
    ├── store_cnpj
    └── store_id
```
