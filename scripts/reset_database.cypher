// Reset completo da base de dados

MATCH (n)
DETACH DELETE n;

CALL apoc.schema.assert({}, {});
