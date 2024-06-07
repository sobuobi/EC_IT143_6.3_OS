-- EC_IT143_6.3_fwf_s8_OS.sql
-- This script is focused on the question: How to extract the last name from a full contact name?

-- Example of a full name: 'Linda Xoese'
-- We aim to extract 'Doe' from 'Linda Xoese'

SELECT SUBSTRING('Linda Xoese', CHARINDEX(' ', 'Linda Xoese') + 1, LEN('Linda Xoese')) AS LastName;
