--// Sales by Productid, Product_Name, Categoty and Sub_Category

select 
	Product_ID
	Product_Name,
	category,
	Sub_Category,
	
	sum(sales) AS Sales
from Superstore
group by Product_ID, Product_ID, Category, Sub_Category
