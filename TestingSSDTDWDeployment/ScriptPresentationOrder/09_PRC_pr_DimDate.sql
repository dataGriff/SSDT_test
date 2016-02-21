CREATE PROCEDURE [import].[pr_DimDate] @startdate DATE, @enddate DATE
AS
SET NOCOUNT ON;
/*
DECLARE @startdate DATE = '01-apr-2014';
DECLARE @enddate DATE = '31-mar-2015';
*/
WITH CTE AS
(
SELECT @startdate AS dt
UNION ALL
SELECT DATEADD(DAY,1,dt) AS dt
FROM cte
WHERE dt < @enddate
)
--SELECT * FROM CTE;
,CTE_Dt AS(
SELECT 
Date = dt
, CalendarYear = year(dt)  
, FinancialYear = CASE 
WHEN DATEPART(QUARTER, dt) BETWEEN 2 AND 4 THEN DATEPART(YEAR,dt)
ELSE DATEPART(YEAR,dt)-1 END
 FROM CTE
)
--SELECT Date, CalendarYear, FinancialYear FROM CTE_Dt
--OPTION(MAXRECURSION 0);
MERGE INTO dbo.DimDate AS Tgt
USING CTE_Dt AS Src ON
tgt.Date =src.Date
WHEN NOT MATCHED THEN
INSERT
(
Date, CalendarYear, FinancialYear
)
VALUES (Date, CalendarYear, FinancialYear)
WHEN MATCHED AND 
tgt.CalendarYear <> src.CalendarYear
AND tgt.FinancialYear <> src.FinancialYear
THEN UPDATE 
SET CalendarYear = src.CalendarYear
, FinancialYear = src.FinancialYear
OPTION(MAXRECURSION 0);
