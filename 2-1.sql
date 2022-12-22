Select a.ordernumber, b.customername
From  orders a
	Left Join customers b
		on a.customernumber = b.customernumber
Order by ordernumber;