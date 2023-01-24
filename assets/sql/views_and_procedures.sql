-- Create view for Departments Read function
CREATE VIEW IF NOT EXISTS read_departments AS
SELECT * FROM departments;

-- Create view for Colleges Read function
CREATE VIEW IF NOT EXISTS read_colleges
AS SELECT * FROM colleges;

-- Create view for Programs Read function
CREATE VIEW IF NOT EXISTS read_programs
AS SELECT * FROM programs;

CREATE VIEW IF NOT EXISTS read_authors
AS SELECT * FROM authors;

-- Create view for Faculty Read function
CREATE VIEW IF NOT EXISTS read_faculty
AS SELECT * FROM faculty;

-- Create view for Publishers Read function
CREATE VIEW IF NOT EXISTS read_publishers
AS SELECT * FROM publishers;

-- Create view for Dewey Classes Read function
CREATE VIEW IF NOT EXISTS read_dewey_classes
AS SELECT * FROM dewey_classes;

--Create view for Students Read function
CREATE VIEW IF NOT EXISTS read_students
AS SELECT * FROM students;

--Create view for Inventory Read function
CREATE VIEW IF NOT EXISTS read_inventory
AS SELECT * FROM inventory;