// ============================================================================
//  IMPORTAÇÃO COMPLETA – NEO4J DESKTOP / AURADB FREE
//  Autor: Sérgio Santos
//  Projeto: Streaming Graph Data Model
// ============================================================================

// ---------------------------------------------------------------------------
// 1. Criar constraints (garante unicidade e melhora performance)
// ---------------------------------------------------------------------------
:use neo4j;

CALL {
    LOAD CSV WITH HEADERS FROM 'file:///00_constraints.cypher' AS row
    RETURN row
};

// Caso o CSV não seja usado, execute inline:
CREATE CONSTRAINT user_id IF NOT EXISTS
FOR (u:User)
REQUIRE u.id IS UNIQUE;

CREATE CONSTRAINT movie_id IF NOT EXISTS
FOR (m:Movie)
REQUIRE m.id IS UNIQUE;

CREATE CONSTRAINT series_id IF NOT EXISTS
FOR (s:Series)
REQUIRE s.id IS UNIQUE;

CREATE CONSTRAINT actor_id IF NOT EXISTS
FOR (a:Actor)
REQUIRE a.id IS UNIQUE;

CREATE CONSTRAINT director_id IF NOT EXISTS
FOR (d:Director)
REQUIRE d.id IS UNIQUE;

CREATE CONSTRAINT genre_id IF NOT EXISTS
FOR (g:Genre)
REQUIRE g.name IS UNIQUE;

// ---------------------------------------------------------------------------
// 2. IMPORTAR NODES – via JSON (AuraDB e Desktop suportam "CALL apoc.load.json")
// ---------------------------------------------------------------------------

// Para AuraDB sem APOC, usamos UNWIND direto:

WITH 'file:///sample_export.json' AS file
CALL {
    WITH file
    LOAD CSV WITH HEADERS FROM file AS row
    RETURN row LIMIT 0
} RETURN 'JSON não está em CSV. Vá para a importação manual abaixo.';

// IMPORTAÇÃO MANUAL (carregamento declarativo)
UNWIND [
  {
    type:'User', id:'user_1', name:'Sérgio'
  },
  {
    type:'Movie', id:'movie_1', title:'Matrix', year:1999
  },
  {
    type:'Movie', id:'movie_2', title:'Inception', year:2010
  },
  {
    type:'Actor', id:'actor_1', name:'Keanu Reeves'
  },
  {
    type:'Actor', id:'actor_2', name:'Leonardo DiCaprio'
  },
  {
    type:'Genre', name:'Sci-Fi'
  },
  {
    type:'Genre', name:'Action'
  }
] AS entry

CALL {
    WITH entry
    CALL {
        WITH entry WHERE entry.type = 'User'
        MERGE (u:User {id: entry.id})
        SET u.name = entry.name
        RETURN 1 AS done
    }
    CALL {
        WITH entry WHERE entry.type = 'Movie'
        MERGE (m:Movie {id: entry.id})
        SET m.title = entry.title,
            m.year = entry.year
        RETURN 1 AS done
    }
    CALL {
        WITH entry WHERE entry.type = 'Actor'
        MERGE (a:Actor {id: entry.id})
        SET a.name = entry.name
        RETURN 1 AS done
    }
    CALL {
        WITH entry WHERE entry.type = 'Genre'
        MERGE (g:Genre {name: entry.name})
        RETURN 1 AS done
    }
    RETURN 1 AS processed
} RETURN processed;

// ---------------------------------------------------------------------------
// 3. CRIAR RELACIONAMENTOS
// ---------------------------------------------------------------------------

// WATCHED
MATCH (u:User {id:'user_1'}), (m:Movie {id:'movie_1'})
MERGE (u)-[:WATCHED]->(m);

MATCH (u:User {id:'user_1'}), (m:Movie {id:'movie_2'})
MERGE (u)-[:WATCHED]->(m);

// ACTED_IN
MATCH (a:Actor {id:'actor_1'}), (m:Movie {id:'movie_1'})
MERGE (a)-[:ACTED_IN]->(m);

MATCH (a:Actor {id:'actor_2'}), (m:Movie {id:'movie_2'})
MERGE (a)-[:ACTED_IN]->(m);

// HAS_GENRE
MATCH (m:Movie {id:'movie_1'}),(g:Genre {name:'Sci-Fi'})
MERGE (m)-[:HAS_GENRE]->(g);

MATCH (m:Movie {id:'movie_2'}),(g:Genre {name:'Action'})
MERGE (m)-[:HAS_GENRE]->(g);

// ---------------------------------------------------------------------------
// 4. CONFIRMAÇÃO FINAL
// ---------------------------------------------------------------------------
MATCH (n) RETURN n LIMIT 25; 

