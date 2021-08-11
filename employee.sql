-- List all employee first and last names only that live in Calgary.
-- Step 6: invoice table
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

-- SELECT CONCAT(first_name,' ',last_name) >>space is for space bewtween the name
-- FROM employee
-- WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee.
SELECT first_name, last_name FROM employee
where birth_date = (select max(birth_date) from employee);

-- Find the birthdate for the oldest employee.
SELECT first_name, last_name FROM employee
where birth_date = (select min(birth_date) from employee);

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT first_name, last_name FROM employee
where reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT (*) FROM employee
WHERE city = 'Lethbridge';

--SELECT COUNT (city) FROM employee
--WHERE city = 'Lethbridge';