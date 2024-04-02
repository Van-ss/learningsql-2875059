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

