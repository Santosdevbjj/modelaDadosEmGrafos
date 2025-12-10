%% Diagrama de alto nível (Entidades e Relacionamentos)
graph LR
  User((User))
  Movie((Movie))
  Series((Series))
  Genre((Genre))
  Actor((Actor))
  Director((Director))

  User -- WATCHED --> Movie
  User -- RATED --> Movie
  User -- FOLLOWS --> User
  Actor -- ACTED_IN --> Movie
  Director -- DIRECTED --> Movie
  Movie -- HAS_GENRE --> Genre
  Series -- HAS_GENRE --> Genre
  Actor -- ACTED_IN --> Series
  Director -- DIRECTED --> Series
