# 🍷 Banco de Dados – Loja de Vinhos (SQL)

Projeto de modelagem e implementação de banco de dados relacional para o cenário de uma vinícola/adega, com foco em **segurança de dados** e **controle de acesso**.

## 🚀 Destaques do Projeto
Além da modelagem padrão (DDL) e manipulação de dados (DML), este projeto implementa práticas de segurança (DCL), simulando um ambiente real de produção:

* **Segurança (Least Privilege):** Criação de usuário específico (`Somellier`) com permissões restritas.
* **Proteção de Dados Sensíveis:** Implementação de `VIEWs` para ocultar dados de contato das vinícolas (e-mail/telefone) de usuários comuns.
* **Otimização de Recursos:** Limitação de consultas por hora (`MAX_QUERIES_PER_HOUR`) para evitar sobrecarga no banco.
* **Dados Realistas:** O povoamento do banco (INSERTs) utiliza nomes de vinícolas e regiões reais do Brasil, utilizados apenas para fins acadêmicos.

## 🛠️ Conceitos Técnicos Aplicados
- **Modelagem Relacional:** Normalização até a 3FN (Tabelas: Região, Vinícola, Vinho).
- **Constraints:** Uso de Chaves Primárias (`PK`) e Estrangeiras (`FK`) para integridade referencial.
- **Consultas:** Joins complexos para relatórios unificados.
- **DCL (Data Control Language):** Comandos `GRANT`, `CREATE USER` e `FLUSH PRIVILEGES`.

## 🗄️ Estrutura do Banco
O sistema é composto pelas seguintes entidades principais:
- **Região:** Cadastro das regiões produtoras.
- **Vinícola:** Dados das empresas, vinculadas a uma região.
- **Vinho:** Catálogo de produtos, vinculados a uma vinícola.

## 📂 Estrutura do Projeto
A organização dos arquivos segue uma lógica de separação de responsabilidades:
- **/src:** Scripts SQL numerados responsáveis pela criação sequencial e configuração do banco de dados.
- **/exemplos:** Consultas SQL (`SELECTs`) prontas para teste e exploração dos dados.
- **script_completo.sql:** Script único contendo todo o projeto para execução rápida.

## 💻 Como executar
1. Certifique-se de ter o **MySQL** instalado.
2. Escolha uma das opções de execução:
   - **Rápida:** Execute o arquivo `script_completo.sql`.
   - **Modular:** Execute os arquivos da pasta `/src` seguindo a ordem numérica.
3. Utilize o seu cliente SQL favorito (Workbench, DBeaver, etc.).
4. Para testar a visão de segurança, logue com o usuário criado:
    - **User:** Somellier
    - **Pass:** senha_exemplo
