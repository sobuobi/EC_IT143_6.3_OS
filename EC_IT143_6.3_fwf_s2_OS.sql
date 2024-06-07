-- EC_IT143_6.3_fwf_s2_OS.sql
-- This script documents the journey to finding the answer to extracting the first name.

-- Current understanding:
-- Use the CHARINDEX function to find the position of the first space.
-- Use the LEFT function to extract characters from the start up to the space.

-- Next step:
-- Write a more comprehensive query that can handle varying names.

SELECT LEFT('Yaa Asaa', CHARINDEX(' ', 'Yaa Asaa') - 1) AS FirstName;
SELECT LEFT('Linda Xoese', CHARINDEX(' ', 'Linda Xoese') - 1) AS FirstName;
SELECT LEFT('Kwame Ansah', CHARINDEX(' ', 'Kwame Ansah') - 1) AS FirstName;
