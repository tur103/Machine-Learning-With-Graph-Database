// CONNECT EDUCATION

MATCH (education:Education)
MATCH (person:Person)-[:EDUCATION_LEVEL]->(education)<-[:EDUCATION_LEVEL]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 2
ON MATCH SET r.value = r.value + 2