Select 제품명 as name, 단가 as price
From 제품
Where 제품아이디 = any(Select 주문제품
				From 주문	
                Group by 주문제품 Having Count(*) > 1);