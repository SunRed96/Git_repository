Create Function dbo.udf_GetSKUPrice
(@ID_SKU int)
RETURNS decimal(18, 2)
	BEGIN
		Declare @Price decimal(18, 2)
		Select @Price = sum([Value]) / sum(Quantity)
		From [dbo].[Basket]
		group by ID_SKU
		Having ID_SKU = @ID_SKU
		RETURN @Price
	END


