# Diagrama de Modelagem em Grafos (Mermaid)

Este diagrama representa a modelagem de dados de um serviço de streaming utilizando Neo4j.

```mermaid
graph LR
    %% Nós principais
    U[User]
    M[Movie]
    S[Series]
    G[Genre]
    A[Actor]
    D[Director]

    %% Relacionamentos
    U -->|WATCHED| M
    U -->|WATCHED| S

    M -->|HAS_GENRE| G
    S -->|HAS_GENRE| G

    A -->|ACTED_IN| M
    A -->|ACTED_IN| S

    D -->|DIRECTED| M
    D -->|DIRECTED| S
