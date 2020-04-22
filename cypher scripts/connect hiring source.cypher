// CONNECT HIRING SOURCE

MATCH (hiring_source:HiringSource)
MATCH (person:Person)-[:HIRING_SOURCE]->(hiring_source)<-[:HIRING_SOURCE]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 1
ON MATCH SET r.value = r.value + 1