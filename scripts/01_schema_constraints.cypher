// Garante a unicidade e rapidez na busca por chave primária
CREATE CONSTRAINT user_id IF NOT EXISTS ON (u:User) ASSERT u.id IS UNIQUE;
CREATE CONSTRAINT movie_title IF NOT EXISTS ON (m:Movie) ASSERT m.title IS UNIQUE;
CREATE CONSTRAINT actor_name IF NOT EXISTS ON (a:Actor) ASSERT a.name IS UNIQUE;
CREATE CONSTRAINT director_name IF NOT EXISTS ON (d:Director) ASSERT d.name IS UNIQUE;
CREATE CONSTRAINT genre_name IF NOT EXISTS ON (g:Genre) ASSERT g.name IS UNIQUE;
