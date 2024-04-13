/*
 * MySQL Workbench
 * - create/drop databases and table
 * - to view, insert and select data
*/
CREATE SCHEMA mg_shema; -- can use SCHEMA/DATABASE

DROP SCHEMA mg_shema;

DESCRIBE staffs; -- display the details of the table structure

CREATE VIEW staff_view
AS
SELECT
	full_name,
    contact_number
FROM staffs;