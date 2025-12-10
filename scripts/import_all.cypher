// Executa toda a carga do projeto em ordem correta

// 1. Constraints
:use neo4j
:source cypher/00_constraints.cypher

// 2. Nodes
:source cypher/01_create_nodes.cypher

// 3. Relationships
:source cypher/02_create_relationships.cypher

// 4. Queries de validação
:source cypher/03_sample_queries.cypher
