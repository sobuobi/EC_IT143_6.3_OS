-- EC_IT143_6.3_fwf_s6_OS.sql
-- Comparing results of the UDF with ad hoc queries.

-- Ad hoc query result
SELECT LEFT('Linda Xoese', CHARINDEX(' ', 'Linda Xoese') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('Linda Xoese') AS FirstName;

-- Ad hoc query result
SELECT LEFT('Yaa Asaa', CHARINDEX(' ', 'Yaa Asaa') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('Yaa Asaa') AS FirstName;

-- Ad hoc query result
SELECT LEFT('Kwame Ansah', CHARINDEX(' ', 'Kwame Ansah') - 1) AS FirstName;

-- UDF result
SELECT dbo.fn_GetFirstName('Kwame Ansah') AS FirstName;
