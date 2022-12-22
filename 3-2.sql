Select a.제품아이디 as product_id, a.제품명 as name, Sum(b.수량) as total_cnt, Count(distinct b.주문고객) as customer_cnt
From 제품 a Left Join 주문 b on a.제품아이디 = b.주문제품
Where 주문고객 = any(Select distinct 고객아이디 From 고객
					Where 등급 != 'silver')
Group by 제품아이디
Order by total_cnt desc;

