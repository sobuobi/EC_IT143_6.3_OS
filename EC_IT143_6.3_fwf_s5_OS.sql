-- EC_IT143_6.3_fwf_s5_OS.sql
-- Creating a scalar function to extract the first name from a full name.

CREATE FUNCTION dbo.fn_GetFirstName (@FullName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LEFT(@FullName, CHARINDEX(' ', @FullName) - 1)
END
GO

-- Testing the function
SELECT dbo.fn_GetFirstName('Yaa Asaa') AS FirstName;
SELECT dbo.fn_GetFirstName('Linda Xoese') AS FirstName;
SELECT dbo.fn_GetFirstName('Kwame Ansah') AS FirstName;
