/*
Create separate file for extended properties
When amend automatically drops and recreates on publish

Publishing doesnt drop table if removed from solution file
Unless in deployment option select "Drop objects in target but not in source" in advanced publish options

Don't forget I want triggers to fire so need select this option on in publishing

If add column with NOT NULL will fail deployment as will be empty and violate constraint
Add a default constraint (which will do anyway) and all is well...

This line was to test source control
*/