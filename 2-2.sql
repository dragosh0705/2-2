Select Month(orderdate) as monthly, Sum(quantityordered * priceeach) as total
From orders a
	Left Join orderdetails b
    on a.ordernumber = b.ordernumber
Group by 1
Order by 1;
