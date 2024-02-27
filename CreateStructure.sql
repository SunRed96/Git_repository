Create Table dbo.SKU(
ID int identity Constraint PK_SKU Primary key,
Code as 's' + [ID] ,
[Name] nvarchar(30),

UNIQUE(Code));

Create Table dbo.Family(
ID int identity Constraint PK_Family Primary key,
SurName nvarchar(30),
BudgetValue money);

Create Table  dbo.Basket(
ID int identity Constraint PK_Basket Primary key,
ID_SKU int,
ID_Family int,
Quantity int Check (Quantity > 0),
[Value] money Check ([Value] > 0),
PurchaseDate as Convert(date, CURRENT_TIMESTAMP),
DiscountValue int,

Constraint FK_SKU Foreign key (ID_SKU) References dbo.SKU (ID),
Constraint FK_Family Foreign key (ID_Family) References dbo.Family (ID));
 

