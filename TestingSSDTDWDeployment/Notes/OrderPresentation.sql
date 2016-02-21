--1.0 Create New Project (SQL Server) Database project

--2.0 Show object explorer and server explorer windows
--connected and disconnected
--note the localdb is only in SSDT
--not the projects 
--both these disconnected
--connected is under the server name

--3.0 Create dim date table (id, date, calendar year (make this an integer))

--3.0 Debug (Start) solution 
--note that this gets built in localdb under object explorer sql server
--can do testing here - exists locally and only in SSDT
--(note good for people who bring down servers with bad code ;))

--4.0 Publish to dev database
--show advanced settings - e.g. trigers off by default but I want these on in my environment
--show database script generated first
--then publish
--make sure save profile
--afterwards set this as default deployment

--5.0 Add data on live - one row for 01/01/2014

--6.0 Add financial year column (with not null, make as integer for now)
--6.1 geneartes error
--6.2 set a default for the column
--6.3 deploys fine now
--6.4 edit the value in live

--7.0 Rename id column to DateKey
--show refactor log
--publish this
--shows renamed and data doesnt change

--8.0 Change data type of calendar year and financial year to SMALLINT
--but do this in object explorer (projects)
--shoehorn in better data type as smaller but still hold all values
--when publish data still remains even though hagve change data type - cool!

--note here that those under sql server are connected - you can stil edit here but wont be in project
--the projects node is disconnected and wont go anywhere
--until build or publish

--note in object explorer when add reference to other database they appear
--as fully-qualified names in project in object explorer

--9.0 Go test and then to live with what done so far - so make two more publish files
--we'll go to test direct from SSDT, as developers do testing?
--note when going to test though we have not published any data...

--10. Add a script not in build to enter some date data
--add a post deployment script and reference this in post deployment script
--debug first and shows the data goes into localdb (for testing locally)
--redeploy to dev and then to test, can see data in all of them
--do a data comparison between them in fact!
--mention can do pre scripts too

--11.0 then we'll phone operations to go live from a dacpac.. what is a dacpac?
--they open SSDT, right-click databases, publish data-tier application
--,navigate to the dacpac file, publish with desired settings
--note the data is in there
--show snapshots of dacpacs so can go back to that dacpac at any point... (held in snapshot folder)

--12.0 Do a schema comparison between dev, test and live... should all be the same

--13.0 Show a data comparison between dev, test and live... should all be the same

--go back to dev stuff and show build errors
--14.0 go to create a table...
--show code snippets
--show can do custome custom snippets (my snippet is adding extened property - will i get merge in before then??)

--15.0 then 
--create a dim test table, with test column
--create a view which selects * from dimtest - run code analysis - warning about select *...
--create a view which references both columns from dim test - build - all good
--delete the test column from the source table - build will fail as view reference not there
--delete test column from view and all good

--15.0 do another schema comparison
--do a schema comparison between project and dev to show the difference (new test objects)
--publish this

--16.0 add extra year of data to post deploy script
--debug - this does into localdb database
--do a data comparison between project and dev - should show year worth of difference
--publish to dev
--do a data comparison between dev and test 

--17.0 create a stored procedure that references msdb sysjobs
--will break
--add reference to system databases (Can be any database or project)
--do select * again first and run code analysis
--right click project > properties > look at rules in code analysis... show whats there...
--change to certain columns - by highlighting - refactor and expand wildcards
--publish everywhere

--18.0 add extended properties to date and add to post scripts
--publish
--show in SSMS, just say cant see yet in SSDT, should be in a report anyway...

--19.0 publish all the way up to test
--do some kind of test here?

--20.0 back on the phone to operations - deploy dacpac to live please

--21.0 show SQL Agile and SSDT dev pack

--22.0 get into git source control - if get time...

--23.0 Snapshot 

--24.0 Run code analysis



