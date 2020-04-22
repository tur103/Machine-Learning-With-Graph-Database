// CONNECT LOCATION

MATCH (location:Location)
MATCH (person:Person)-[:LOACTION]->(location)<-[:LOACTION]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 5
ON MATCH SET r.value = r.value + 5