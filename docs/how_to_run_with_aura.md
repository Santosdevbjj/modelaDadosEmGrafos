# Como Executar o Projeto Usando Neo4j AuraDB Free

Este documento explica o processo completo para rodar o projeto na nuvem usando o Neo4j AuraDB Free.

---

# 🚀 1. Criar Conta na AuraDB

1. Acesse: https://neo4j.com/cloud/aura/
2. Clique em **Start Free**.
3. Faça login com Google/GitHub/email.
4. Dentro do painel, selecione **AuraDB Free**.

---

# 🗄 2. Criar Instância

1. Clique em **Create Database**.
2. Selecione:
   - **Free Tier**
   - Região mais próxima (ex.: us-east, sa-east-1)
3. Informe um nome: streaming-grafos

---


4. A plataforma vai criar a instância em segundos.

---

# 🔑 3. Copiar credenciais de acesso

Você receberá:

- **bolt+s://…** (endpoint)
- **Usuário:** neo4j  
- **Senha:** gerada automaticamente

Salve estes dados — serão usados nos scripts.

---

# 🧩 4. Conectar com Neo4j Browser

1. Acesse: https://browser.neo4j.io
2. Insira:
- URL (bolt+s://…)
- Usuário
- Senha
3. Clique em **Connect**.

---

# 🟢 5. Rodar os scripts do projeto

Execute *na ordem*:

1. `cypher/00_constraints.cypher`
2. `cypher/01_create_nodes.cypher`
3. `cypher/02_create_relationships.cypher`
4. `cypher/03_sample_queries.cypher`

Para rodar:

- Abra o arquivo → copie o conteúdo → cole no Browser → Run.

---

# 🔄 6. Resetar Base (Opcional)

Arquivo: scripts/reset_database.cypher


---

Use para limpar tudo.

---

# 🔍 7. Conferir o Grafo

Execute:

```cypher
MATCH (n) RETURN n;


---

**Clique em Graph View.**

Você verá:

Usuários

Filmes

Atores

Diretores

Gêneros

Relacionamentos assistidos, atuados, dirigidos



---

🎯 **Conclusão**

Seguindo este guia você terá toda a estrutura do projeto funcionando dentro da AuraDB.


---





   
