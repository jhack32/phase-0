# Release 5: SELECTing data from database

1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population
FROM states;
4. SELECT state_name, population FROM states
ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id IN (7);
6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states
ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. SELECT regions.region_name, states.state_name
FROM regions
INNER JOIN states
ON regions.id = states.region_id
ORDER BY region_id ASC;

#Release 6: Own schema

![Release 6][./outfits-persons-database.png]

#Release 7: Reflect

- What are databases for?

Databases are used to retrieve information that's stored for easy access. It's like a library for information.

- What is a one-to-many relationship?

One-to-many relationship is when "one belongs to a number. number has many ones." It's when something has a relationship to a bigger category. When the parent record in one table has multiple references to another table. The child record should only be related to the parent record.

- What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique key. It can only be assigned to one key in the table. It's like a ID in html/css or a driver license number.
A foreign key is the key that's related to the primary key in the other table. In one of our releases, we had two tables (outfits and persons). Our outfits id (primary key) was related to persons outfit_id (foreign key).

- How can you select information out of a SQL database? What are some general guidelines for that?

There are a lot of ways to select information out of a SQL database. We generally use SELECT and everything after would be the name of what you want to get out of the database. We can do SELECT * FROM table.
We need to replace table and the * if we wanted something specific. The * selects everything from the table. We can also get values from two tables by using INNER JOIN.
We need to put a semicolon after we finished what we want to get from the SQL database. Once we put that semicolon at the end, SQL will run and retrieve the information based on what you wanted it to get.
