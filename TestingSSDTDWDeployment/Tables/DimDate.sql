CREATE TABLE [import].[DimDate]
(
	[DateKey] INT NOT NULL PRIMARY KEY, 
    [Date] DATE NOT NULL, 
    [CalendarYear] SMALLINT NOT NULL, 
    [FinancialYear] SMALLINT NOT NULL DEFAULT -1
);
GO

