--// Top Profitable Products

Select
	Top 10
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name
order by sum(profit) desc


--// Regional Top Profitable Products where region is east
Select
	Top 10
	region,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
where region = 'east'
group by Product_Name, Region
order by sum(profit) desc

--// Regional Top Profitable Products where region is west
Select
	Top 10
	region,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
where region = 'west'
group by Product_Name, Region
order by sum(profit) desc

--// Regional Top Profitable Products where region is central
Select
	Top 10
	region,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
where region = 'central'
group by Product_Name, Region
order by sum(profit) desc

--// Regional Top Profitable Products where rregion is south
Select
	Top 10
	region,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
where region = 'south'
group by Product_Name, Region
order by sum(profit) desc


--// Regional Top Profitable Products By Segment
Select
	Top 10
	region,
	Segment,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name, Region, Segment
order by sum(profit) desc


--// Top Profitable Products by Sates
Select
	Top 10
	state,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name, state
order by sum(profit) desc

--// Top Profitable Products by Sates and segment
Select
	Top 10
	state,
	segment,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name, state, Segment
order by sum(profit) desc





--// Top Profitable Products by Cities

Select
	Top 10
	city,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name, City
order by sum(profit) desc


--// Top Profitable Products by Cities and segment

Select
	Top 10
	city,
	Segment,
	Product_name,
	sum(profit) Top_Profitable_Products
from Superstore
group by Product_Name, City, Segment
order by sum(profit) desc