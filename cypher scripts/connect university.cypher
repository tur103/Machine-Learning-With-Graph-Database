// CONNECT UNIVERSITY

MATCH (university:University)
MATCH (person:Person)-[:STUDIED_AT]->(university)<-[:STUDIED_AT]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 3
ON MATCH SET r.value = r.value + 3