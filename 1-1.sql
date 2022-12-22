Select customer_id, count(payment_date) as cnt_customer, avg(amount) as avg_amount
From payment
Where amount > 2
Group by customer_id;