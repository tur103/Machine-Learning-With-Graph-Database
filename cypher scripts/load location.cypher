// LOAD LOCATION

MATCH (person:Person)
MERGE (location:Location {name: person.`Biz.Location`})
MERGE (person)-[:LOACTION]->(location)