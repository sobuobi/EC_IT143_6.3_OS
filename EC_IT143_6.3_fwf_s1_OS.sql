-- EC_IT143_6.3_fwf_s1_OS.sql

-- This script is focused on the question: How to extract the first name from a full contact name?

-- Example of a full name: 'Linda Xoese'
-- We aim to extract 'Linda' from 'Linda Xoese'

SELECT LEFT('Linda Xoese', CHARINDEX(' ', 'Linda Xoese') - 1) AS FirstName;
