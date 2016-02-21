CREATE TABLE [dbo].[DimDate]
(
	[DateKey] INT NOT NULL PRIMARY KEY, 
    [Date] DATE NOT NULL, 
    [CalendarYear] SMALLINT NOT NULL, --good to change to SMALLINT as smaller!!
    [MonthName] VARCHAR(10) NOT NULL, 
    [FinancialYear] SMALLINT NOT NULL CONSTRAINT DFT_DimDate_FinancialYear DEFAULT -1
)
