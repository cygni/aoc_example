CREATE TEMP TABLE part (part CHAR(5) NOT NULL);
-- COPY is server-process-perspective, \copy is client-process-perspective, same command
\copy part FROM PROGRAM 'echo ${part:-part1}';

CREATE TEMP TABLE input (linenum SMALLSERIAL, "value" INTEGER NOT NULL);
\copy input ("value") FROM 'input.txt';

\copy (SELECT 'SQL') TO STDOUT;

CREATE TEMP TABLE solutions (
  part CHAR(5) NOT NULL,
  result INTEGER
);

INSERT INTO solutions (part, result)
SELECT 'part1', SUM("value") FROM input;

WITH RECURSIVE product AS (
  SELECT 0 as seq, 1 as result
  UNION
  SELECT i.linenum, p.result * i."value"
  FROM product p INNER JOIN input i on i.linenum = p.seq + 1
)
INSERT INTO solutions (part, result)
SELECT 'part2', result FROM product ORDER BY seq DESC LIMIT 1;

SELECT result
FROM solutions
JOIN part ON part.part = solutions.part;
