// 1. Listar filmes vistos por um usuário
MATCH (u:User {id: 1})-[:WATCHED]->(m:Movie)
RETURN u.name, m.title, m.year;

// 2. Atores de um filme
MATCH (m:Movie {title: "Vingadores_Ultimato"})<-[:ACTED_IN]-(a:Actor)
RETURN m.title, a.name;

// 3. Filmes por gênero
MATCH (g:Genre {name: "Ação"})<-[:HAS_GENRE]-(m:Movie)
RETURN g.name, m.title;

// 4. Recomendar filmes por gênero preferido
MATCH (u:User {id: 1})-[:LIKES_GENRE]->(g)<-[:HAS_GENRE]-(m:Movie)
RETURN u.name, g.name, m.title;

// 5. Filmes dirigidos por um diretor
MATCH (d:Director {name: "Diretor_A"})-[:DIRECTED]->(m:Movie)
RETURN d.name, m.title;
