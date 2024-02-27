IF EXISTS(select * FROM sys.views where name = 'vw_SKUPrice') 
Drop View vw_SKUPrice;

go

Create VIEW vw_SKUPrice as
	Select *, [dbo].[udf_GetSKUPrice]([ID]) as Unit_Price 
	From [dbo].[SKU]


