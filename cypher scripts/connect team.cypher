// CONNECT TEAM

MATCH (team:Team)
MATCH (person:Person)-[:TEAM]->(team)<-[:TEAM]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 6
ON MATCH SET r.value = r.value + 6