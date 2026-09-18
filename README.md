* [ ] 

```ignore
# PostgreSQL - Estudos e Prática de SQL

Projeto de estudos e análise de dados utilizando PostgreSQL, com foco em consultas SQL,
relacionamentos entre tabelas e extração de informações para apoio à análise.

## 🎯 Objetivo

Este projeto foi desenvolvido para praticar SQL aplicado à análise de dados e responder perguntas de negócio utilizando um banco de dados relacional.
O foco principal foi desenvolver consultas capazes de extrair informações relevantes sobre clientes, lojas, cidades, estados e etapas do funil de vendas.

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

## 📊 Perguntas de negócio

Durante o projeto foram elaboradas e respondidas perguntas envolvendo:

- Análise da quantidade de registros no funil;
- Clientes e suas respectivas informações;
- Distribuição de clientes por localização;
- Análise de renda e score;
- Comparações entre clientes;
- Análises por loja;
- Utilização de JOINs entre diferentes tabelas;
- Agregações e agrupamentos;
- Identificação de padrões relevantes nos dados.

## 🔎 Abordagem

As consultas foram desenvolvidas buscando simular situações reais de análise de negócio.

O processo utilizado foi:

1. Entender a pergunta de negócio;
2. Identificar as tabelas e colunas necessárias;
3. Verificar os relacionamentos entre as tabelas;
4. Construir a consulta SQL;
5. Validar os resultados;
6. Interpretar as informações obtidas.
```
