--// Top Selling Products
Select
	Product_name,
	SUM(sales) Sales
from
	Superstore
group by Product_Name
order by sum(sales) desc 


--// Top Selling Products
Select TOP 10
product_name,
sum(sales) Top_Selling_Products
from Superstore
group by Product_Name
order by sum(sales) desc



--// Top Sales from Regions
Select
	Top 10
	region,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'east'
group by Product_Name, Region
order by sum(sales) desc


--// Top Sales from Sates
Select
	Top 10
	state,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'east'
group by Product_Name, State
order by sum(sales) desc


--// Top Sales from Cities
Select
	Top 10
	city,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'east'
group by Product_Name, City
order by sum(sales) desc


--// Top Sales from Cities by Segment
Select
	Top 10
	city,
	Product_name,
	segment,
	sum(sales) Top_Sales
from Superstore

group by Product_Name, City, Segment
order by sum(sales) desc



--// Top Sales from Sates by segments
Select
	Top 10
	state,
	segment,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'east'
group by Product_Name, State, Segment
order by sum(sales) desc


--// Top Sales from Regions By Segment
Select
	Top 10
	region,
	Segment,
	Product_name,
	sum(sales) Top_Sales
from Superstore
group by Product_Name, Region, Segment
order by sum(sales) desc


--// Top Sales from Regions By Category where region is east
Select
	Top 10
	region,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'east'
group by Product_Name, Region, Category
order by sum(sales) desc

--// Top Sales from Regions By Category where region is west
Select
	Top 10
	region,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'west'
group by Product_Name, Region, Category
order by sum(sales) desc

--// Top Sales from Regions By Category where region is central
Select
	Top 10
	region,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'central'
group by Product_Name, Region, Category
order by sum(sales) desc

--// Top Sales from Regions By Category where region is south
Select
	Top 10
	region,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
where region = 'south'
group by Product_Name, Region, Category
order by sum(sales) desc

--// Top Sales from Sates by Category
Select
	Top 10
	state,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
group by Product_Name, state, Category
order by sum(sales) desc


--// Top Sales from Cities by Category
Select
	Top 10
	city,
	Category,
	Product_name,
	sum(sales) Top_Sales
from Superstore
group by Product_Name, city, Category
order by sum(sales) desc


