CREATE TABLE [dbo].[DimDate]
(
	[DateKey] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Date] DATE NOT NULL, 
    [CalendarYear] SMALLINT NOT NULL, 
    [FinancialYear] INT NOT NULL DEFAULT -1
);
GO

