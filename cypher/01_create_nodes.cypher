// --- Criar Genres
MERGE (:Genre {name: 'Ação'});
MERGE (:Genre {name: 'Aventura'});
MERGE (:Genre {name: 'Ficcao_Cientifica'});
MERGE (:Genre {name: 'Fantasia'});
MERGE (:Genre {name: 'Drama'});
MERGE (:Genre {name: 'Comedia'});
MERGE (:Genre {name: 'Suspense'});

// --- Criar Movies (10 filmes)
CREATE (m1:Movie {id:'movie_1', title:'Vingadores: Ultimato', release_year:2019, duration_minutes:181});
CREATE (m2:Movie {id:'movie_2', title:'Avatar: O Caminho da Agua', release_year:2022, duration_minutes:192});
CREATE (m3:Movie {id:'movie_3', title:'Star Wars: O Despertar da Forca', release_year:2015, duration_minutes:135});
CREATE (m4:Movie {id:'movie_4', title:'Homem-Aranha: Sem Volta Para Casa', release_year:2021, duration_minutes:148});
CREATE (m5:Movie {id:'movie_5', title:'Jurassic World: O Mundo dos Dinossauros', release_year:2015, duration_minutes:124});
CREATE (m6:Movie {id:'movie_6', title:'Velozes e Furiosos 7', release_year:2015, duration_minutes:137});
CREATE (m7:Movie {id:'movie_7', title:'Harry Potter e a Pedra Filosofal', release_year:2001, duration_minutes:152});
CREATE (m8:Movie {id:'movie_8', title:'Forrest Gump: O Contador de Historias', release_year:1994, duration_minutes:142});
CREATE (m9:Movie {id:'movie_9', title:'De Volta para o Futuro', release_year:1985, duration_minutes:116});
CREATE (m10:Movie {id:'movie_10', title:'Gladiador', release_year:2000, duration_minutes:155});

// --- Criar Actors (10 atores principais)
CREATE (a1:Actor {id:'actor_1', name:'Robert Downey Jr.', birth_year:1965});
CREATE (a2:Actor {id:'actor_2', name:'Sam Worthington', birth_year:1976});
CREATE (a3:Actor {id:'actor_3', name:'Harrison Ford', birth_year:1942});
CREATE (a4:Actor {id:'actor_4', name:'Tom Holland', birth_year:1996});
CREATE (a5:Actor {id:'actor_5', name:'Chris Pratt', birth_year:1979});
CREATE (a6:Actor {id:'actor_6', name:'Vin Diesel', birth_year:1967});
CREATE (a7:Actor {id:'actor_7', name:'Daniel Radcliffe', birth_year:1989});
CREATE (a8:Actor {id:'actor_8', name:'Tom Hanks', birth_year:1956});
CREATE (a9:Actor {id:'actor_9', name:'Michael J. Fox', birth_year:1961});
CREATE (a10:Actor {id:'actor_10', name:'Russell Crowe', birth_year:1964});

// --- Criar Directors (exemplos simplificados)
CREATE (d1:Director {id:'director_1', name:'Anthony Russo', birth_year:1970});
CREATE (d2:Director {id:'director_2', name:'James Cameron', birth_year:1954});
CREATE (d3:Director {id:'director_3', name:'J.J. Abrams', birth_year:1966});
CREATE (d4:Director {id:'director_4', name:'Jon Watts', birth_year:1981});
CREATE (d5:Director {id:'director_5', name:'Colin Trevorrow', birth_year:1976});
CREATE (d6:Director {id:'director_6', name:'James Wan', birth_year:1977});
CREATE (d7:Director {id:'director_7', name:'Chris Columbus', birth_year:1958});
CREATE (d8:Director {id:'director_8', name:'Robert Zemeckis', birth_year:1952});
CREATE (d9:Director {id:'director_9', name:'Zack Snyder', birth_year:1966});
CREATE (d10:Director {id:'director_10', name:'Ridley Scott', birth_year:1937});

// --- Criar Users (10 usuários) - ids e emails fictícios
CREATE (u1:User {id:'user_1', name:'Lucas Silva', email:'lucas.silva@example.com', signup_date:'2024-01-10'});
CREATE (u2:User {id:'user_2', name:'Mariana Costa', email:'mariana.costa@example.com', signup_date:'2024-02-05'});
CREATE (u3:User {id:'user_3', name:'Pedro Oliveira', email:'pedro.oliveira@example.com', signup_date:'2024-03-12'});
CREATE (u4:User {id:'user_4', name:'Ana Pereira', email:'ana.pereira@example.com', signup_date:'2024-04-20'});
CREATE (u5:User {id:'user_5', name:'Joao Souza', email:'joao.souza@example.com', signup_date:'2024-05-01'});
CREATE (u6:User {id:'user_6', name:'Beatriz Ramos', email:'beatriz.ramos@example.com', signup_date:'2024-06-11'});
CREATE (u7:User {id:'user_7', name:'Carlos Mendes', email:'carlos.mendes@example.com', signup_date:'2024-07-02'});
CREATE (u8:User {id:'user_8', name:'Fernanda Lima', email:'fernanda.lima@example.com', signup_date:'2024-08-15'});
CREATE (u9:User {id:'user_9', name:'Rafael Alves', email:'rafael.alves@example.com', signup_date:'2024-09-30'});
CREATE (u10:User {id:'user_10', name:'Paula Rocha', email:'paula.rocha@example.com', signup_date:'2024-10-22'});
