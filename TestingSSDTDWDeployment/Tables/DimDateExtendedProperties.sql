EXEC sp_addextendedproperty @name = N'Description', @value = N'This is a date field'
, @level0type  = N'Schema', @level0name = N'import', @level1type = N'Table', @level1name = N'DimDate', @level2type=N'Column',@level2name = N'Date';
GO