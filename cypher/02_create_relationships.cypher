// --- Vincular Movies com Genres
MATCH (m1:Movie {id:'movie_1'}), (g:Genre {name:'Ação'}) CREATE (m1)-[:HAS_GENRE]->(g);
MATCH (m2:Movie {id:'movie_2'}), (g:Genre {name:'Ficcao_Cientifica'}) CREATE (m2)-[:HAS_GENRE]->(g);
MATCH (m3:Movie {id:'movie_3'}), (g:Genre {name:'Ficcao_Cientifica'}) CREATE (m3)-[:HAS_GENRE]->(g);
MATCH (m4:Movie {id:'movie_4'}), (g:Genre {name:'Aventura'}) CREATE (m4)-[:HAS_GENRE]->(g);
MATCH (m5:Movie {id:'movie_5'}), (g:Genre {name:'Aventura'}) CREATE (m5)-[:HAS_GENRE]->(g);
MATCH (m6:Movie {id:'movie_6'}), (g:Genre {name:'Ação'}) CREATE (m6)-[:HAS_GENRE]->(g);
MATCH (m7:Movie {id:'movie_7'}), (g:Genre {name:'Fantasia'}) CREATE (m7)-[:HAS_GENRE]->(g);
MATCH (m8:Movie {id:'movie_8'}), (g:Genre {name:'Drama'}) CREATE (m8)-[:HAS_GENRE]->(g);
MATCH (m9:Movie {id:'movie_9'}), (g:Genre {name:'Ficcao_Cientifica'}) CREATE (m9)-[:HAS_GENRE]->(g);
MATCH (m10:Movie {id:'movie_10'}), (g:Genre {name:'Suspense'}) CREATE (m10)-[:HAS_GENRE]->(g);

// --- Vincular Actors com Movies (ACTED_IN)
MATCH (a1:Actor {id:'actor_1'}), (m1:Movie {id:'movie_1'}) CREATE (a1)-[:ACTED_IN]->(m1);
MATCH (a2:Actor {id:'actor_2'}), (m2:Movie {id:'movie_2'}) CREATE (a2)-[:ACTED_IN]->(m2);
MATCH (a3:Actor {id:'actor_3'}), (m3:Movie {id:'movie_3'}) CREATE (a3)-[:ACTED_IN]->(m3);
MATCH (a4:Actor {id:'actor_4'}), (m4:Movie {id:'movie_4'}) CREATE (a4)-[:ACTED_IN]->(m4);
MATCH (a5:Actor {id:'actor_5'}), (m5:Movie {id:'movie_5'}) CREATE (a5)-[:ACTED_IN]->(m5);
MATCH (a6:Actor {id:'actor_6'}), (m6:Movie {id:'movie_6'}) CREATE (a6)-[:ACTED_IN]->(m6);
MATCH (a7:Actor {id:'actor_7'}), (m7:Movie {id:'movie_7'}) CREATE (a7)-[:ACTED_IN]->(m7);
MATCH (a8:Actor {id:'actor_8'}), (m8:Movie {id:'movie_8'}) CREATE (a8)-[:ACTED_IN]->(m8);
MATCH (a9:Actor {id:'actor_9'}), (m9:Movie {id:'movie_9'}) CREATE (a9)-[:ACTED_IN]->(m9);
MATCH (a10:Actor {id:'actor_10'}), (m10:Movie {id:'movie_10'}) CREATE (a10)-[:ACTED_IN]->(m10);

// --- Vincular Directors com Movies (DIRECTED)
MATCH (d1:Director {id:'director_1'}), (m1:Movie {id:'movie_1'}) CREATE (d1)-[:DIRECTED]->(m1);
MATCH (d2:Director {id:'director_2'}), (m2:Movie {id:'movie_2'}) CREATE (d2)-[:DIRECTED]->(m2);
MATCH (d3:Director {id:'director_3'}), (m3:Movie {id:'movie_3'}) CREATE (d3)-[:DIRECTED]->(m3);
MATCH (d4:Director {id:'director_4'}), (m4:Movie {id:'movie_4'}) CREATE (d4)-[:DIRECTED]->(m4);
MATCH (d5:Director {id:'director_5'}), (m5:Movie {id:'movie_5'}) CREATE (d5)-[:DIRECTED]->(m5);
MATCH (d6:Director {id:'director_6'}), (m6:Movie {id:'movie_6'}) CREATE (d6)-[:DIRECTED]->(m6);
MATCH (d7:Director {id:'director_7'}), (m7:Movie {id:'movie_7'}) CREATE (d7)-[:DIRECTED]->(m7);
MATCH (d8:Director {id:'director_8'}), (m8:Movie {id:'movie_8'}) CREATE (d8)-[:DIRECTED]->(m8);
MATCH (d9:Director {id:'director_9'}), (m9:Movie {id:'movie_9'}) CREATE (d9)-[:DIRECTED]->(m9);
MATCH (d10:Director {id:'director_10'}), (m10:Movie {id:'movie_10'}) CREATE (d10)-[:DIRECTED]->(m10);

// --- Criar WATCHED e RATED entre Users e Movies (exemplos)
MATCH (u1:User {id:'user_1'}), (m1:Movie {id:'movie_1'}) CREATE (u1)-[:WATCHED {date:'2024-10-01'}]->(m1);
MATCH (u1:User {id:'user_1'}), (m1:Movie {id:'movie_1'}) CREATE (u1)-[:RATED {rating:9, date:'2024-10-01'}]->(m1);

MATCH (u2:User {id:'user_2'}), (m2:Movie {id:'movie_2'}) CREATE (u2)-[:WATCHED {date:'2024-10-05'}]->(m2);
MATCH (u3:User {id:'user_3'}), (m3:Movie {id:'movie_3'}) CREATE (u3)-[:WATCHED {date:'2024-11-01'}]->(m3);
MATCH (u4:User {id:'user_4'}), (m4:Movie {id:'movie_4'}) CREATE (u4)-[:WATCHED {date:'2024-11-02'}]->(m4);
MATCH (u5:User {id:'user_5'}), (m5:Movie {id:'movie_5'}) CREATE (u5)-[:WATCHED {date:'2024-11-03'}]->(m5);
MATCH (u6:User {id:'user_6'}), (m6:Movie {id:'movie_6'}) CREATE (u6)-[:WATCHED {date:'2024-11-04'}]->(m6);
MATCH (u7:User {id:'user_7'}), (m7:Movie {id:'movie_7'}) CREATE (u7)-[:WATCHED {date:'2024-11-05'}]->(m7);
MATCH (u8:User {id:'user_8'}), (m8:Movie {id:'movie_8'}) CREATE (u8)-[:WATCHED {date:'2024-11-06'}]->(m8);
MATCH (u9:User {id:'user_9'}), (m9:Movie {id:'movie_9'}) CREATE (u9)-[:WATCHED {date:'2024-11-07'}]->(m9);
MATCH (u10:User {id:'user_10'}), (m10:Movie {id:'movie_10'}) CREATE (u10)-[:WATCHED {date:'2024-11-08'}]->(m10);

// --- Usuários que seguem outros usuários (exemplo de rede social)
MATCH (u1:User {id:'user_1'}), (u2:User {id:'user_2'}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u2:User {id:'user_2'}), (u3:User {id:'user_3'}) CREATE (u2)-[:FOLLOWS]->(u3);
