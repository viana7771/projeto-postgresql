
# Proposta: Análise de Perfil de Clientes e Oportunidades de Marketing

## 1. Contexto

Durante os exercícios de SQL com PostgreSQL, realizei uma consulta para identificar os modelos de veículos com maior quantidade de registros no funil de vendas.

A partir do resultado, observei que os modelos que apareceram entre os mais visitados pareciam ser predominantemente veículos populares.

Essa observação gerou uma hipótese de negócio: investigar se existem padrões de comportamento e características semelhantes entre os clientes que demonstram interesse por determinadas categorias de veículos.

**Importante:** essa percepção inicial ainda precisa ser validada por meio de uma análise mais completa dos dados.

## 2. Objetivo

Investigar a relação entre os produtos visitados, o comportamento dos clientes no funil de vendas e, caso existam dados adequados e autorizados, as características agregadas dos segmentos de clientes.

O objetivo final é gerar informações que possam apoiar decisões de marketing e identificar oportunidades comerciais.

## 3. Perguntas de negócio

- Quais marcas e modelos recebem mais visitas?
- Quais modelos apresentam maior conversão em compras?
- Existe diferença de comportamento entre as categorias de veículos?
- É possível identificar segmentos de clientes com diferentes padrões de interesse?
- Caso existam dados disponíveis, quais características socioeconômicas agregadas podem ajudar a compreender esses segmentos?

## 4. Dados necessários

- `sales.funnel`: registros e etapas do funil de vendas.
- `sales.products`: informações sobre marcas, modelos, anos e preços.
- `sales.customers`: informações disponíveis sobre os clientes.

A disponibilidade de dados sobre renda, ocupação e score de crédito ainda deverá ser verificada. O uso de dados pessoais dependerá de autorização, finalidade adequada e controles de privacidade.

## 5. Etapas da análise

1. Explorar a estrutura e a qualidade das tabelas.
2. Identificar os modelos com maior quantidade de visitas.
3. Comparar visitas, checkouts e compras concluídas.
4. Relacionar os registros do funil aos produtos e clientes, quando possível.
5. Avaliar padrões agregados de comportamento e perfil, se os dados permitirem.
6. Criar gráficos e indicadores para apoiar a interpretação.
7. Documentar os resultados e propor ações de marketing baseadas nas evidências.

## 6. Resultados esperados

- Ranking de modelos e marcas por visitas.
- Comparação das taxas de conversão.
- Identificação de possíveis oportunidades comerciais.
- Perfil agregado dos segmentos, caso existam dados adequados.
- Recomendações para futuras campanhas de marketing.

## 7. Status do projeto

**Fase atual:** formulação da hipótese e exploração dos dados.

**Próxima etapa:** verificar as colunas disponíveis nas tabelas e validar a observação inicial por meio de consultas SQL.

As hipóteses serão consideradas confirmadas somente após a análise dos dados.
