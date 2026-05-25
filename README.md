# Projeto de Banco de Dados - Sistema para Gestão de Pessoas Desempregadas

## 📌 Sobre o Projeto

Este repositório contém o desenvolvimento completo de um projeto de banco de dados relacional, realizado como trabalho prático para a disciplina de Banco de Dados. O objetivo foi aplicar os conceitos desde a modelagem conceitual até a implementação física, atendendo a um cenário real que integra **direitos humanos**, mais especificamente o direito ao trabalho e à dignidade da pessoa humana.

O sistema proposto visa auxiliar na gestão de pessoas em situação de desemprego, conectando-as a oportunidades de trabalho, qualificação profissional e políticas públicas de inclusão no mercado de trabalho.

## 🎯 Tema Escolhido

**Sistema para Gestão de Pessoas Desempregadas**

O sistema permite:

- Cadastro completo de pessoas desempregadas, incluindo dados pessoais, contato, endereço e documentação.
- Registro do perfil profissional (profissão, experiência, habilidades, escolaridade).
- Cadastro de empresas e vagas de emprego disponíveis.
- Compatibilização entre candidatos e vagas com base em requisitos e perfil profissional.
- Acompanhamento do histórico de candidaturas e status (candidatado, em entrevista, contratado, rejeitado).
- Registro de cursos de qualificação profissional e participação dos candidatos.
- Geração de relatórios estatísticos por região, faixa etária, escolaridade e setor de atuação.

## 📋 Etapas do Desenvolvimento

O trabalho foi dividido nas seguintes etapas:

| Parte | Descrição |
|-------|------------|
| **P1** | Descrição detalhada do cenário e regras de negócio. |
| **P2** | Esquema conceitual no modelo Entidade-Relacionamento (MER). |
| **P3** | Esquema lógico no modelo relacional, com especificação de domínios de cada atributo. |
| **P4** | Script SQL para criação do banco de dados, tabelas e restrições. |
| **P5** | Script SQL para povoamento do banco com dados de exemplo. |
| **P6** | Scripts de manipulação (INSERT, UPDATE, DELETE) demonstrando operações reais. |
| **P7** | Consultas em Álgebra Relacional e SQL para emissão de relatórios gerenciais. |
| **P9** | Relatório técnico completo (Introdução, desenvolvimento, conclusão e melhorias propostas). |

## 🛠️ Tecnologias Utilizadas

- **Modelagem de Dados**: Modelo Entidade-Relacionamento (MER) e Modelo Relacional
- **Ferramenta de Modelagem**: brModelo / MySQL Workbench / Draw.io
- **Banco de Dados**: PostgreSQL / MySQL
- **Linguagem SQL**: DDL (criação de tabelas e constraints), DML (inserção, atualização, remoção), DQL (consultas avançadas)
- **Documentação**: Relatório técnico em PDF

## 🔍 Principais Funcionalidades do Banco de Dados

- Cadastro de **pessoas desempregadas** com dados demográficos, contato e documentação.
- Cadastro de **empresas** e **vagas de emprego** com requisitos específicos.
- Registro de **candidaturas**, incluindo data, status e histórico de acompanhamento.
- Cadastro de **cursos de qualificação profissional** e inscrições de candidatos.
- Relacionamento entre **candidatos e vagas** por meio de compatibilização de habilidades e experiência.
- Controle de **órgãos governamentais** e programas de assistência ao desempregado.
- Integridade referencial com chaves estrangeiras e restrições de domínio.
- Consultas avançadas com junções (INNER JOIN, LEFT JOIN), agrupamentos (GROUP BY), funções de agregação (COUNT, AVG, SUM) e subconsultas.

## 📊 Exemplos de Consultas Desenvolvidas (P7)

1. Listar todos os candidatos desempregados há mais de 6 meses em um determinado município.
2. Vagas com maior número de candidatos inscritos, ordenadas por concorrência.
3. Média salarial das vagas por setor de atuação (comércio, indústria, serviços, etc.).
4. Candidatos que participaram de cursos de qualificação nos últimos 12 meses.
5. Empresas que mais contrataram candidatos cadastrados no sistema.
6. Relação candidato/vaga por faixa de escolaridade (fundamental, médio, superior).
7. Percentual de candidatos recolocados no mercado de trabalho após participação em programas de qualificação.

## 👤 Desenvolvimento

- **Autor(a)**: [Mateus Maffi](https://github.com/MMaffi)
- **Disciplina**: Banco de Dados
- **Data de Entrega**: 30/05/2026
- **Apresentação**: 01/06/2026

## 📌 Conceitos Aplicados

O projeto contempla todos os conceitos estudados na disciplina, incluindo:

- **Modelo Entidade-Relacionamento (MER)** e **MER Estendido** (especialização/generalização, atributos multivalorados e derivados).
- **Modelo Relacional**: transformação do MER para esquema relacional.
- **Restrições de Integridade**: domínio, entidade (chave primária) e referencial (chave estrangeira).
- **Álgebra Relacional**: operações de seleção, projeção, junção, renomeação e divisão.
- **SQL**: criação de tabelas, chaves, índices, consultas aninhadas, visões (views) e funções de agregação.

## 💡 Melhorias Propostas (P9 - Conclusão)

Como melhoria futura para o projeto, sugere-se:

- Implementação de um sistema de **recomendação automática** de vagas baseado em perfil e localização.
- Criação de um **painel de dashboards interativos** para órgãos públicos visualizarem indicadores do desemprego.
- Adoção de **triggers e stored procedures** para automatizar regras de negócio (ex.: atualização automática de status de candidatura após prazo).
- Integração com **APIs de localização** (geocoding) para análise espacial do desemprego.

## 📄 Licença

Este projeto é de uso acadêmico e educacional. Para outros usos, consulte o autor.

---

**Repositório criado para fins didáticos - Banco de Dados para Cidadania e Inclusão no Mercado de Trabalho.**
