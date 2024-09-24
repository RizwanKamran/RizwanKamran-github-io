Select
	order_Date,
	SUM(sales) Sales
from
	Superstore
Group By Order_Date
