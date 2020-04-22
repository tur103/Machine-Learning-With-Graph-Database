// LOAD EDUCATION

MATCH (person:Person)
MERGE (education:Education {name: person.`Education.Level`})
MERGE (person)-[:EDUCATION_LEVEL]->(education)