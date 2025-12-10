// Usuários
UNWIND range(1,10) AS id
CREATE (:User {id: id, name: "User_" + id});

// Gêneros
UNWIND [
  "Ação", "Aventura", "Ficção_Científica", "Drama", "Fantasia"
] AS g
CREATE (:Genre {name: g});

// Filmes
CREATE (:Movie {id: 1, title: "Vingadores_Ultimato", year: 2019});
CREATE (:Movie {id: 2, title: "Avatar_O_Caminho_da_Agua", year: 2022});
CREATE (:Movie {id: 3, title: "Star_Wars_O_Despertar_da_Forca", year: 2015});
CREATE (:Movie {id: 4, title: "Homem_Aranha_Sem_Volta_Para_Casa", year: 2021});
CREATE (:Movie {id: 5, title: "Jurassic_World", year: 2015});
CREATE (:Movie {id: 6, title: "Velozes_e_Furiosos_7", year: 2015});
CREATE (:Movie {id: 7, title: "Harry_Potter_e_a_Pedra_Filosofal", year: 2001});
CREATE (:Movie {id: 8, title: "Forrest_Gump", year: 1994});
CREATE (:Movie {id: 9, title: "De_Volta_para_o_Futuro", year: 1985});
CREATE (:Movie {id: 10, title: "Gladiador", year: 2000});

// Atores
CREATE (:Actor {name: "Robert_Downey_Jr"});
CREATE (:Actor {name: "Sam_Worthington"});
CREATE (:Actor {name: "Harrison_Ford"});
CREATE (:Actor {name: "Tom_Holland"});
CREATE (:Actor {name: "Chris_Pratt"});
CREATE (:Actor {name: "Vin_Diesel"});
CREATE (:Actor {name: "Daniel_Radcliffe"});
CREATE (:Actor {name: "Tom_Hanks"});
CREATE (:Actor {name: "Michael_J_Fox"});
CREATE (:Actor {name: "Russell_Crowe"});

// Diretores dummy
UNWIND [
  "Diretor_A", "Diretor_B", "Diretor_C", "Diretor_D", "Diretor_E",
  "Diretor_F", "Diretor_G", "Diretor_H", "Diretor_I", "Diretor_J"
] AS d
CREATE (:Director {name: d});
