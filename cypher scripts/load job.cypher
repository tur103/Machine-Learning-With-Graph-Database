// LOAD JOB

MATCH (person:Person)
MERGE (job:Job {name: person.`Job.Family`})
MERGE (person)-[:JOB]->(job)