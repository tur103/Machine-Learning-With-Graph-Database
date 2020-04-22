// LOAD HIRING SOURCE

MATCH (person:Person)
MERGE (hiring_source:HiringSource {name: person.`Hiring.Source`})
MERGE (person)-[:HIRING_SOURCE]->(hiring_source)