// Relacionamentos Ator -> Filme
MATCH (a:Actor), (m:Movie)
WITH a, m
WHERE (
  (a.name="Robert_Downey_Jr" AND m.id=1) OR
  (a.name="Sam_Worthington" AND m.id=2) OR
  (a.name="Harrison_Ford" AND m.id=3) OR
  (a.name="Tom_Holland" AND m.id=4) OR
  (a.name="Chris_Pratt" AND m.id=5) OR
  (a.name="Vin_Diesel" AND m.id=6) OR
  (a.name="Daniel_Radcliffe" AND m.id=7) OR
  (a.name="Tom_Hanks" AND m.id=8) OR
  (a.name="Michael_J_Fox" AND m.id=9) OR
  (a.name="Russell_Crowe" AND m.id=10)
)
CREATE (a)-[:ACTED_IN]->(m);

// Relacionamentos Diretor -> Filme
MATCH (d:Director), (m:Movie)
WITH d, m, m.id AS id
WHERE id IN range(1,10)
AND d.name CONTAINS toString(id)
CREATE (d)-[:DIRECTED]->(m);

// Relacionamentos Movie -> Genre (aleatórios)
MATCH (m:Movie), (g:Genre)
WHERE rand() < 0.3
CREATE (m)-[:HAS_GENRE]->(g);

// Usuários assistindo filmes
MATCH (u:User), (m:Movie)
WHERE rand() < 0.25
CREATE (u)-[:WATCHED]->(m);

// Usuários gostam de gêneros
MATCH (u:User), (g:Genre)
WHERE rand() < 0.3
CREATE (u)-[:LIKES_GENRE]->(g);
