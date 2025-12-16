# 🍷 Banco de Dados – Loja de Vinhos (SQL)

Projeto de modelagem e implementação de banco de dados relacional para o cenário de uma vinícola/adega, com foco em **segurança de dados** e **controle de acesso**.

## 🚀 Destaques do Projeto
Além da modelagem padrão (DDL) e manipulação de dados (DML), este projeto implementa práticas de segurança (DCL), simulando um ambiente real de produção:

* **Segurança (Least Privilege):** Criação de usuário específico (`Somellier`) com permissões restritas.
* **Proteção de Dados Sensíveis:** Implementação de `VIEWs` para ocultar dados de contato das vinícolas (e-mail/telefone) de usuários comuns.
* **Otimização de Recursos:** Limitação de consultas por hora (`MAX_QUERIES_PER_HOUR`) para evitar sobrecarga no banco.
* **Dados Realistas:** O povoamento do banco (INSERTs) utiliza nomes de vinícolas e regiões reais do Brasil, apenas para fins acadêmicos.

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

## 💻 Como executar
1. Certifique-se de ter o **MySQL** instalado.
2. Execute o script `script_loja_vinhos.sql` no seu cliente SQL favorito (Workbench, DBeaver, etc.).
3. Para testar a visão de segurança, logue com o usuário criado:
    - **User:** Somellier
    - **Pass:** senha_exemplo
