-- EC_IT143_6.3_fwf_s3_OS.sql
-- Ad hoc query to extract the first name from various full names.

-- Extracting first name from 'Linda Xoese'
SELECT LEFT('Linda Xoese', CHARINDEX(' ', 'Linda Xoese') - 1) AS FirstName;

-- Extracting first name from 'Yaa Asaa'
SELECT LEFT('Yaa Asaa', CHARINDEX(' ', 'Yaa Asaa') - 1) AS FirstName;

-- Extracting first name from 'Kwame Ansah'
SELECT LEFT('Kwame Ansah', CHARINDEX(' ', 'Kwame Ansah') - 1) AS FirstName;
