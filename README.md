### Modelagem de Dados em Grafos de um Serviço de Streaming.

![Neo4J901_Grafos02](https://github.com/user-attachments/assets/fd04095b-a6d7-409c-bb89-36c4046309fa)


**Bootcamp Neo4J - Análise de Dados com Grafos**

---



Projeto: Modelagem de Dados em Grafos de um Serviço de Streaming

​Este projeto modela um serviço de streaming usando um banco de dados de grafo Neo4j.

**​1.  Tecnologias Utilizadas e Requisitos**

<img width="986" height="1682" alt="Screenshot_20251210-001936" src="https://github.com/user-attachments/assets/d50fe63c-0a8a-4ad4-8be6-734d0746d43a" />

---

**Requisitos de Software:**

​Conta no GitHub: Para clonar o repositório e versionar o projeto.
​Navegador Web: Para acessar o Neo4j AuraDB Free e o Neo4j Browser.
​Um Editor de Texto/IDE: (Ex: VS Code, Sublime Text) para editar os arquivos .md e .cypher.

**​Requisitos de Hardware**

​Os requisitos são mínimos, pois o banco de dados principal será hospedado na nuvem (Neo4j AuraDB Free). Um computador padrão com acesso à internet é suficiente.

---



**2. 🗺️ Modelagem Conceitual do Grafo
​Componentes (Nós - Nodes)**

**​Seguindo as boas práticas (Label com Letra maiúscula):**
​:User (Usuário)
​:Movie (Filme)
​:Series (Série)
​:Genre (Gênero)
​:Actor (Ator)
​:Director (Diretor) 

**​Relacionamentos (Relationships)**

​Seguindo as boas práticas (Relacionamentos em MAIÚSCULAS, nomes duplos com underline):

​:WATCHED (Assistiu): (:User) \rightarrow (:Movie) ou (:Series)
​:IS_IN_GENRE (É do Gênero): (:Movie) ou (:Series) \rightarrow (:Genre)
​:ACTED_IN (Atuou em): (:Actor) \rightarrow (:Movie) ou (:Series)
​:DIRECTED (Dirigiu): (:Director) \rightarrow (:Movie) ou (:Series)



---










---

**Contato:**

[![Portfólio Sérgio Santos](https://img.shields.io/badge/Portfólio-Sérgio_Santos-111827?style=for-the-badge&logo=githubpages&logoColor=00eaff)](https://santosdevbjj.github.io/portfolio/)
[![LinkedIn Sérgio Santos](https://img.shields.io/badge/LinkedIn-Sérgio_Santos-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/santossergioluiz) 


---
