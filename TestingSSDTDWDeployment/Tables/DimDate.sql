CREATE TABLE [dbo].[DimDate]
(
	[DateKey] INT NOT NULL PRIMARY KEY, 
    [Date] DATE NOT NULL, 
    [CalendarYear1] SMALLINT NOT NULL, 
    [FinancialYear] SMALLINT NOT NULL DEFAULT -1
);
GO

