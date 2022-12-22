Select 
		Left(first_name, 1) 'char',
		Count(first_name) cnt
From actor
Group by 1
Order by cnt desc;