
--// Count of Quantity Sold
select
	[Product_type],SUM(
[Order_quantities]) Ordered_Qauntity
from supply_chain
Group by [Product_type]



--// Revenue Generated from Products
Select
	[Product_type],
	SUM([Revenue_generated]) as Product_Revenue
	from 
		supply_chain
		group by [Product_type]



--// Total Shipping cost of Products
Select
	[Product_type],sum(
	[Shipping_costs]) as Product_Shipping_Cost
	from 
		supply_chain
		group by [Product_type]


--// Products Quantity Sold
Select
	[Product_type],
SUM([Number_of_products_sold]) as Quantity_Sold
from
	supply_chain
Group By [Product_type]



--// Defect Rate of SKU's
Select
[Product_type],
[Defect_rates],
[SKU]
from supply_chain



--// Total orders from customer demographies by Product Type
Select 
		[Customer_demographics],
[Product_type],
		SUM([Order_quantities]) Total_Orders
	from
		supply_chain
	Group By [Customer_demographics],[Product_type]




	--// Top 10 SKU with higher price
	Select top 10
			[SKU],SUM(
			[Price]) as Price
		from supply_chain
		Group By SKU
		order by Price desc




--// Total Revenue Generated from Locations
		Select
			[Location],sum(
		[Revenue_generated]) Total_Revenue

		from supply_chain
		group by [Location]


--// Top 10 SKU from locations revenue wise
			Select top 10
				[Location],
				sku,
				sum(	[Revenue_generated]) Total_Revenue

		from supply_chain
		group by [Location], SKU
		order by sum([Revenue_generated]) desc


--// Top 10 SKU from Mumbai revenue wise
			Select top 10
				[Location],
				sku,
				sum(	[Revenue_generated]) Total_Revenue

		from supply_chain
		where Location= 'Mumbai'
		group by [Location], SKU
		order by sum([Revenue_generated]) desc




--// Total Revenue from locations with customer demographies
Select
	top 10
		[Location],
		[Customer_demographics],
		SUM([Revenue_generated]) Total_Revenue
from	
	supply_chain
Group by [Location],[Customer_demographics]
order by SUM([Revenue_generated]) desc


--// Total Revenue from Mumbai with Customer Demographies
Select
	top 10
		[Location],
		[Customer_demographics],
		SUM([Revenue_generated]) Total_Revenue
from	
	supply_chain
	where Location= 'Mumbai'
Group by [Location],[Customer_demographics]
order by SUM([Revenue_generated]) desc



--//Cost from transportation modes and their Routes
Select
		[Transportation_modes],
		[Routes],
		sum([Costs]) Total_Cost
	from	
		supply_chain
		where [Transportation_modes]='Road'
	Group by [Transportation_modes],[Routes]
	Order BY SUM([Costs]) desc



	--//Cost from transportation modes and their Routes
Select
		[Transportation_modes],
		[Routes],
		sum([Costs]) Total_Cost
	from	
		supply_chain
	
	Group by [Transportation_modes],[Routes]
	Order BY SUM([Costs]) desc




--// CASES when revenue is high, medium, normal, minimum and low
	Select	
			[Product_type],
[Revenue_generated],
CASE
	WHEN [Revenue_generated] > 8000 THEN 'HIGH'
	WHEN [Revenue_generated] > 7000 THEN 'MEDIUM'
	WHEN [Revenue_generated] > 6000 THEN  'NORMAL'
	WHEN [Revenue_generated] > 5000 THEN  'MINIMUM'
	ELSE 'LOW' END Revenue_Type


from supply_chain




--// Reveue Type with it's Distribution
Select
		Revenue_Type,
		SUM([Revenue_generated]) Revenue_Distribution
		from
			(Select	
			[Product_type],
[Revenue_generated],
CASE
	WHEN [Revenue_generated] > 8000 THEN 'HIGH'
	WHEN [Revenue_generated] > 7000 THEN 'MEDIUM'
	WHEN [Revenue_generated] > 6000 THEN  'NORMAL'
	WHEN [Revenue_generated] > 5000 THEN  'MINIMUM'
	ELSE 'LOW' END Revenue_Type


from supply_chain
)t
group by Revenue_Type
order by Revenue_Distribution Desc


--// Products with price more than average price
Select
	[Product_type],
	Sku,
	[Price],
	(Select AVG([Price]) from supply_chain) Avg_Price
from	
	supply_chain
Where [Price] > (Select AVG([Price]) from supply_chain)




--// Products with price more than average price 2
Select * from
(Select
	[Product_type],
	SKU,
	[Price],
	AVG([Price]) over() Avg_Price

from supply_chain)t
Where Price > Avg_Price




--// Rank Customer Demographics according to their Revenue
Select*,
RANK() Over(Order by Total_Sales Desc) Cust_Demo_Rank
from

(Select
	[Customer_demographics],
	SUM([Revenue_generated]) Total_Sales
from 
	supply_chain
Group By [Customer_demographics])t