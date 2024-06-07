-- Q1: How to keep track of when a record was last modified?
-- A1: This works for the initial INSERT...

--ALTER TABLE dbo.t_hello_world
--ADD last_modified_date DATETIME DEFAULT GETDATE();


-- Q2: How to keep track of when a record was last modified?
-- A2: Maybe use an after update trigger?
-- https://stackoverflow.com/questions/9522982/t-sql-trigger-update
-- https://stackoverflow.com/questions/4574010/how-to-create-trigger-to-keep-track-of-last-changed-data


-- Q4: Did it work?
-- A3: Well, let's see...yup

-- Remove stuff if it is already there
DELETE FROM dbo.t_hello_world
 WHERE my_message IN('Hello World2', 'Hello World3', 'Hello World4');

-- Load test rows
INSERT INTO dbo.t_hello_world(my_message)
VALUES('Hello World2'), ('Hello World3');

--See if the trigger worked
SELECT t.*
  FROM dbo.t_hello_world AS t;

-- Try it again
UPDATE dbo.t_hello_world SET my_message = 'Hello World4'
 WHERE my_message = 'Hello World3';

-- See if the trigger worked
SELECT t.*
 FROM dbo.t_hello_world AS t;
