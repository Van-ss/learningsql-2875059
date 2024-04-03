SELECT * FROM people;

SELECT first_name, last_name FROM people;

SELECT * FROM people WHERE state_code='NY';

SELECT first_name, last_name
FROM people
WHERE state_code='CA' AND shirt_or_hat='shirt' AND team <> 'Angry Ants';

SELECT * FROM people
WHERE state_code LIKE 'C%';

SELECT * FROM people
WHERE company LIKE '%LLC'
LIMIT 5 OFFSET 5;

SELECT first_name, last_name
FROM people
ORDER BY first_name DESC;

SELECT first_name, LENGTH(first_name)
FROM people;

SELECT DISTINCT(first_name)
FROM people;

SELECT COUNT(*)
FROM people
WHERE state_code='CA';

SELECT *
FROM people
JOIN states ON people.state_code=states.state_abbrev
WHERE people.first_name Like 'J%' AND states.region='South';

SELECT 3>2;

SELECT first_name, quiz_points
FROM people
WHERE quiz_points>=70
ORDER BY quiz_points;

SELECT SUM(quiz_points)
FROM people;

SELECT team, COUNT(*), SUM(quiz_points), SUM(quiz_points)/COUNT(*)
FROM people
GROUP BY team;

SELECT first_name, last_name, quiz_points
FROM people
WHERE quiz_points=(SELECT MAX(quiz_points) FROM people);

SELECT first_name, SUBSTR(last_name, 1,5)
FROM people;

SELECT REPLACE(first_name, "a", "-")
FROM people;

SELECT quiz_points
FROM people
ORDER BY CAST(quiz_points AS CHAR);

SELECT first_name AS firstname, UPPER(last_name) AS surname
FROM people;