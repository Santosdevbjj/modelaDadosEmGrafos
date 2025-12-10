---

# ✅ **ARQUIVOS CYPHER COMPLETOS**

A seguir, copie cada arquivo para seu respectivo diretório.

---

# 📄 `cypher/00_constraints.cypher`

```cypher
// Constraints e índices

CREATE CONSTRAINT user_id IF NOT EXISTS
FOR (u:User)
REQUIRE u.id IS UNIQUE;

CREATE CONSTRAINT movie_id IF NOT EXISTS
FOR (m:Movie)
REQUIRE m.id IS UNIQUE;

CREATE CONSTRAINT series_id IF NOT EXISTS
FOR (s:Series)
REQUIRE s.id IS UNIQUE;

CREATE CONSTRAINT actor_name IF NOT EXISTS
FOR (a:Actor)
REQUIRE a.name IS UNIQUE;

CREATE CONSTRAINT director_name IF NOT EXISTS
FOR (d:Director)
REQUIRE d.name IS UNIQUE;

CREATE CONSTRAINT genre_name IF NOT EXISTS
FOR (g:Genre)
REQUIRE g.name IS UNIQUE;
