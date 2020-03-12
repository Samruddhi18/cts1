select * from Customers
select * from Orders
CREATE Function dbo.Greetings2(@Name varchar(50) )
Returns varchar(200)
As
BEGIN
Declare @Greet as varchar(100)
Set @Greet = 'Congratulations'+@Name;
Return @Greet
END
select dbo.Greetings2('Samruddhi')As Greet;



alter Function dbo.Multiplication(@n1 int ,@n2 int)
Returns varchar(100)
As
BEGIN
Declare @multi as varchar(50)
set @multi ='The Product Is='+Convert(varchar(100),@n1*@n2);
Return @multi
END
select dbo.Multiplication(50,30)As Product;



Create Function Getdatabydate(@date1 date,@date2 Date)
RETURNS table
As
Return select * from Orders where
OrderDate Between @date1 AND @date2;
select * from Getdatabydate('1996-07-04','1996-07-16');

alter Function Getcustomer(@Country varchar(50))
RETURNS table
As
Return select * from Customers where Country=@Country;

select * from Getcustomer('France');

