// Recomendar filmes baseados em atores assistidos pelo usuário

MATCH (u:User {id: "user_1"})-[:WATCHED]->(:Movie)<-[:ACTED_IN]-(a:Actor)
MATCH (a)-[:ACTED_IN]->(m2:Movie)
WHERE NOT EXISTS {
    MATCH (u)-[:WATCHED]->(m2)
}
RETURN DISTINCT m2.title AS recomendacao, a.name AS ator
LIMIT 10;

// Top 5 gêneros mais assistidos

MATCH (:User)-[:WATCHED]->(m:Movie)-[:HAS_GENRE]->(g:Genre)
RETURN g.name AS genero, COUNT(*) AS total
ORDER BY total DESC
LIMIT 5;

// Diretores mais conectados no grafo

MATCH (d:Director)-[:DIRECTED]->(m:Movie)
RETURN d.name AS diretor, COUNT(m) AS filmes
ORDER BY filmes DESC;
