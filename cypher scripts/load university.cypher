// LOAD UNIVERSITY

MATCH (person:Person)
MERGE (university:University {name: person.University})
MERGE (person)-[:STUDIED_AT]->(university)