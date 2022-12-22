Select a.customernumber, a.customername, (b.orderdate Is Not Null) as is_order
From  customers a
	Left Join orders b
		on a.customernumber = b.customernumber

Group by customername
Order by customernumber;