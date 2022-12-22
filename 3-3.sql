Select a.고객아이디 as customer_id, a.등급 as level, Sum(b.수량*c.단가) as total
From 고객 a left join 주문 b on a.고객아이디 = b.주문고객
			left join 제품 c on b.주문제품 = c.제품아이디
            
          
Group by customer_id
Having total is not null
Order by total desc;
				