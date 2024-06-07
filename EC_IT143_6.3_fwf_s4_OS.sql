-- EC_IT143_6.3_fwf_s4_OS.sql
-- Testing the solution for extracting first names.

-- Using Google and Stack Overflow, found that CHARINDEX and LEFT are suitable for this task.

-- Test with multiple names
SELECT LEFT('Regina Tetteh', CHARINDEX(' ', 'Regina Tetteh') - 1) AS FirstName;
SELECT LEFT('Owusu Ansah', CHARINDEX(' ', 'Owusu Ansah') - 1) AS FirstName;
SELECT LEFT('Alberta Agba', CHARINDEX(' ', 'Alberta Agba') - 1) AS FirstName;
