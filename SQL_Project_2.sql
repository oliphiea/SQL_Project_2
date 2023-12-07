# Write an SQL query to find the Nobel Prize Winners for the year 1970. Return subject & winner names.

SELECT 
    year, Winner, Subject
FROM
    nobelprize
WHERE
    year = 1970;


# Write a SQL query to find the Nobel Prize winner in ‘Peace’ for 1970. Return winner.

SELECT 
    year, Subject, Winner
FROM
    nobelprize
WHERE
    Subject = 'Peace' AND year = 1970;


# Write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject & country.

SELECT 
    year, subject, country
FROM
    nobelprize
WHERE
    winner = 'Dennis Gabor';


# Write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ after 1970’s.

SELECT 
    *
FROM
    nobelprize
WHERE
    Subject = 'Physics' AND year > 1970;
    

# Write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. 
# Begin and end values are included. Return year, subject, winner, and country.

SELECT 
    year, subject, winner, country
FROM
    nobelprize
WHERE
    Subject = 'Chemistry'
        AND year BETWEEN 1965 AND 1975;
        

# Write a SQL query to display all details of the Prime Ministerial winners 
# after 1972 of Menachem Begin and Yitzhak Rabin.

SELECT 
    *
FROM
    nobelprize
WHERE
    category = 'Prime Minister'
        AND year > 1972
        AND Winner IN ('Menachem Begin' AND 'Yitzhak Rabin');


# Write a SQL query to retrieve the details of the winners whose first names match 
# with the string ‘Louis’. Return year, subject, winner, country, and category.

SELECT 
    year, subject, winner, country, category
FROM
    nobelprize
WHERE
    winner LIKE 'Louis%';
    

# Write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. 
# Return year, subject, winner, country, and category.

SELECT 
    year, subject, winner, country, category
FROM
    nobelprize
WHERE
    winner = 'Johannes Georg Bednorz';
    

# Write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. 
# Return year, subject, winner, country, and category. 
#Order the result by year, descending and winner in ascending.

SELECT 
    *
FROM
    nobelprize
WHERE
    subject NOT LIKE 'P%'
ORDER BY year DESC , winner ASC;


# Write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. 
# Return year, subject, winner, country, and category.

SELECT 
    *
FROM
    nobelprize
WHERE
    year = 1970 AND Subject != 'Physiology'
        AND subject != 'Economics';

