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