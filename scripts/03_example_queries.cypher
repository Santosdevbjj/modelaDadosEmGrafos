// 1. Encontrar todos os filmes que um usuário assistiu
MATCH (u:User {id: 'user_1'})-[:WATCHED]->(m:Movie)
RETURN u.name, m.title, m.year;

// 2. Encontrar todos os atores que atuaram em filmes de um Gênero específico
MATCH (a:Actor)-[:ACTED_IN]->(m:Movie)-[:IS_IN_GENRE]->(g:Genre {name: 'Ficção Científica'})
RETURN DISTINCT a.name AS Ator, count(m) AS Filmes_de_Ficção
ORDER BY Filmes_de_Ficção DESC;
