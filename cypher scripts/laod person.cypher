// LOAD PERSON

LOAD CSV WITH HEADERS FROM "file:///People.csv" AS line
WITH line LIMIT 800

MERGE (person:Person {name: line.Name})
SET person += line
WITH line, person

CALL apoc.do.when(line.Retirement = "Yes",
				  'SET person:Retired RETURN person',
                  'RETURN person',
                  {line:line, person:person})
YIELD value
WITH line, value["person"] AS person

CALL apoc.do.when(line.`Is.Manager` = "Yes",
				  'SET person:Manager RETURN person',
                  'RETURN person',
                  {line:line, person:person})
YIELD value
WITH line, value["person"] AS person

CALL apoc.create.addLabels(person, [line.Sex]) YIELD node
WITH COLLECT(node) AS nodes
RETURN 1