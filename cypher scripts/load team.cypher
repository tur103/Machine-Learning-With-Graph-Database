// LOAD TEAM

MATCH (person:Person)
MERGE (team:Team {name: person.Team})
MERGE (person)-[:TEAM]->(team)