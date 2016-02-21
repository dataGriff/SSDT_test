DECLARE @startdate DATE = '01-apr-2014'
, @enddate DATE = '31-mar-2016';

EXEC [import].[pr_DimDate] @startdate = @startdate, @enddate = @enddate;

