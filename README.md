### Modelagem de Dados em Grafos de um Serviço de Streaming.

![Neo4J901_Grafos02](https://github.com/user-attachments/assets/fd04095b-a6d7-409c-bb89-36c4046309fa)


**Bootcamp Neo4J - Análise de Dados com Grafos**

---


📘 **Modelagem de Dados em Grafos – Serviço de Streaming (Neo4j AuraDB / Desktop)**

<img width="1080" height="687" alt="ModelagemDadosEmGrafos" src="https://github.com/user-attachments/assets/97683f37-c4b1-48b6-ae2c-7fabd0ef1d34" />


Este repositório apresenta um projeto completo de modelagem de dados em grafos para um Serviço de Streaming, utilizando as melhores práticas em Neo4j.

O objetivo é demonstrar como aplicar conceitos de Grafos para representar usuários, filmes, séries, atores, diretores e gêneros, além de fornecer scripts de criação, consultas e automação.

O projeto é adequado para aprendizado, portfolio profissional, estudos de ciência de dados e demonstrações práticas de modelagem em grafos.


---

🧠 **Objetivo do Projeto**

Construir um grafo funcional e completo, contendo:

• Usuários

• Filmes

• Séries

• Gêneros

• Atores

• Diretores


**Com:**

• diagramas (Mermaid + PNG + ASCII),

• scripts Cypher organizados,

• dataset de exemplo,

• consultas básicas e avançadas,

• importação automatizada,

• documentação clara e didática.


---

**Tudo pronto para rodar em:**

✔ Neo4j AuraDB Free (recomendado)

✔ Neo4j Desktop



---

🏗️ **Arquitetura do Repositório**

<img width="950" height="1455" alt="Screenshot_20251210-054203" src="https://github.com/user-attachments/assets/56071d9d-e167-4967-9e5b-97112a2590ea" />


---

    

**A seguir, explicação detalhada arquivo por arquivo.**


---

📂 **Descrição Completa das Pastas e Arquivos**


---

• **.gitignore**

Ignora arquivos temporários do sistema operacional, IDEs, logs e configurações sensíveis:

.DS_Store, Thumbs.db

node_modules/

.env, .vscode/

arquivos temporários de build



---

📁 **Pasta cypher/ – Scripts Cypher**

Scripts 100% compatíveis com Neo4j AuraDB Free e Neo4j Desktop.

**1. 00_constraints.cypher**

Define constraints e indexes usando boas práticas:

• Usuário: id único

• Filme: id único

• Série: id único

• Ator: id único

• Diretor: id único

• Gênero: nome único


**2. 01_create_nodes.cypher**

Cria todos os nós (users, movies, actors, genres, etc).

Contém os 10 filmes e 10 atores solicitados no projeto.

**3. 02_create_relationships.cypher**

**Cria os relacionamentos:**

• WATCHED

• ACTED_IN

• DIRECTED

• HAS_GENRE

• LIKES

• FOLLOWS


**4. 03_sample_queries.cypher**

• Consultas úteis:

• Filmes por gênero

• Atores de um filme

• Filmes assistidos por usuário

• Recomendação simples baseada em similaridade

• Gêneros mais assistidos



---

📁 **Pasta docs/ – Documentação Técnica**

**1. diagram_mermaid.md**

Diagrama Mermaid pronto para colar em qualquer plataforma:

Representação visual completa do grafo

Nós, relacionamentos e cardinalidades


**2. model_description.md**

Descrição técnica da modelagem:

Por que grafo é adequado para streaming

Decisões de design

Labels utilizados

Relacionamentos

Modelagem de usuários

Por que Movie e Series são labels distintos


**3. tools_and_references.md**

Lista de ferramentas úteis:

Neo4j AuraDB Free

Neo4j Browser

Arrows.app (lousas digitais)

Mermaid Live Editor

Neo4j Bloom

Cypher Editor VSCode extensions


**4. how_to_run_with_aura.md**

Guia prático:

Como criar a instância AuraDB Free

Como obter credentials (Bolt)

Como executar scripts do repositório

Como limpar, consultar e validar dados


**5. whiteboard_examples.md**

Modelos de esboços feitos à mão / whiteboard:

Rascunho conceitual

Variáveis de domínio

Relacionamentos iniciais

Evolução do grafo



---

📁 **Pasta assets/ – Imagens e Representações Visuais**

**1. diagram.png**

Imagem PNG do diagrama geral do grafo.
Ideal para apresentação, artigos e LinkedIn.

**2. diagram_overview.txt**

Versão ASCII do diagrama:

útil para repositórios simples ou visualização via terminal



---

📁 **Pasta scripts/ – Automação**

**1. reset_database.cypher**

Limpa completamente o banco:

MATCH (n) DETACH DELETE n;

**2. import_all.cypher**

Script único, que importa tudo:

constraints

nodes

relationships

validação final


Compatível com:

AuraDB Free

Neo4j Desktop


**3. queries_advanced.cypher**

Consultas analíticas avançadas:

Similaridade por gênero

Comunidades de usuários

Caminhos entre atores

Filmes mais centrais via PageRank

Regras de recomendação baseadas em grafos



---

📁 **Pasta samples/ – Dados de Exemplo**

**1. sample_export.json**

JSON simples para teste:

2 filmes

2 atores

1 usuário

2 gêneros


**2. full_dataset.json**

Dataset completo:

10 filmes

10 atores

10 usuários fictícios

5 diretores

6 gêneros



---

🛠️ **Tecnologias Utilizadas**

Tecnologia	Função

Neo4j AuraDB Free	Banco de dados de grafos em nuvem

Cypher Query Language	Linguagem de consulta declarativa

Mermaid.js	Diagramas em Markdown
PNG Diagram	Apresentações e comunicação visual

Arrows.app	Modelagem gráfica visual

Neo4j Browser	Interface de execução de queries

Neo4j Desktop	Ambiente local para testes




---

💻 **Requisitos de Hardware**

**Para Neo4j AuraDB Free:**

• CPU: qualquer

• RAM: 4GB (recomendado)

• Navegador moderno


**Para Neo4j Desktop:**

• Windows / Mac / Linux

• CPU Dual Core

• RAM mínima: 8GB

• Espaço em disco: 2GB

• Java incluído



---

🧰 **Requisitos de Software**

• Navegador Chrome/Edge/Firefox

• Conta no Neo4j AuraDB (gratuita)

• Neo4j Desktop (opcional)

• Git + GitHub (para clonar o projeto)

• VSCode (recomendado)



---

▶️ **Como Executar o Projeto**

**Opção 1 — Neo4j AuraDB Free (recomendado)**

1. Criar uma instância em
https://console.neo4j.io


2. Copiar o endereço neo4j+s://...


3. Abrir Neo4j Browser


4. Executar:



:source scripts/reset_database.cypher
:source scripts/import_all.cypher


---

**Opção 2 — Neo4j Desktop**

1. Criar novo banco vazio


2. Acessar Neo4j Browser


3. Rodar:



:source scripts/import_all.cypher


---

🔎 **Validação Final**

Após a importação, execute:

MATCH (n) RETURN n LIMIT 50;

Ou visualize os relacionamentos:

MATCH (a)-[r]->(b) RETURN a,r,b LIMIT 100;


---

⭐ **Demonstração do Grafo (Mermaid)**

graph TD
    User -->|WATCHED| Movie
    
    Actor -->|ACTED_IN| Movie
    
    Director -->|DIRECTED| Movie
    
    Movie -->|HAS_GENRE| Genre
    
    User -->|LIKES| Genre
    
    User -->|FOLLOWS| User
    


---

🧑‍🎓 **Para Quem Este Projeto é Ideal**

Estudantes de Grafos

Analistas de Dados

Engenheiros de Dados

Profissionais de IA

Desenvolvedores back-end

Cientistas de Dados que querem migrar para Graph Data Science



---

📈 **Resultados Esperados**

**Ao final você terá:**

✔ Um grafo completo de streaming

✔ Scripts profissionais

✔ Documentação corporativa

✔ Dataset pronto

✔ Consultas avançadas

✔ Portfolio excepcional para LinkedIn / GitHub



---

🎯 **Autor**

Sérgio Santos



---








---

**Contato:**

[![Portfólio Sérgio Santos](https://img.shields.io/badge/Portfólio-Sérgio_Santos-111827?style=for-the-badge&logo=githubpages&logoColor=00eaff)](https://santosdevbjj.github.io/portfolio/)
[![LinkedIn Sérgio Santos](https://img.shields.io/badge/LinkedIn-Sérgio_Santos-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/santossergioluiz) 


---
