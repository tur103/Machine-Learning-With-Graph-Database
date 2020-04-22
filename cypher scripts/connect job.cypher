// CONNECT JOB

MATCH (job:Job)
MATCH (person:Person)-[:JOB]->(job)<-[:JOB]-(other_person:Person)
WHERE ID(person) > ID(other_person)
MERGE (person)<-[r:RELATED]->(other_person)
ON CREATE SET r.value = 4
ON MATCH SET r.value = r.value + 4