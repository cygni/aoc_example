CREATE TEMP TABLE part (part CHAR(5) NOT NULL);
-- COPY is server-process-perspective, \copy is client-process-perspective, same command
\copy part FROM PROGRAM 'echo ${part:-part1}';

CREATE TEMP TABLE input (linenum SMALLSERIAL, "value" VARCHAR(5) NOT NULL);
\copy input ("value") FROM 'input.txt';

WITH solutions AS (
  SELECT 'part1' AS part, "value" AS result FROM input
  WHERE linenum = 1 
UNION
  SELECT 'part2' AS part, "value" AS result FROM input
  WHERE linenum = 2
)
SELECT result
FROM solutions
JOIN part ON part.part = solutions.part;
