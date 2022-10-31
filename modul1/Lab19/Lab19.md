![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | MySQL Select

## Introduction

 In this lab, we will practice selecting and projecting data. You can finish all questions with only these clauses:
- `SELECT`
- `SELECT DISTINCT`
- `COUNT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `SUM`
- `LIMIT`

The Sql script is here: https://drive.google.com/file/d/1tT1OTdIgkI5tkeeXIsnZwMC5SxI1FE9m/view
Please submit your solutions in a text file `solutions.sql`.

#### 1. From the `order_items` table, find the price of the highest priced order and lowest price order.
use olist;
select max(price), min(price) from order_items;

#### 2. From the `order_items` table, what is range of the shipping_limit_date of the orders?
select max(shipping_limit_date), min(shipping_limit_date) from order_items;
from 2016-09-19 to 2020-04-10


#### 3. From the `customers` table, find the states with the greatest number of customers.

select customer_state, count(customer_id) from customers
group by customer_state
order by count(customer_id) desc;
SP	41746

#### 4. From the `customers` table, within the state with the greatest number of customers, find the cities with the greatest number of customers.

select customer_city, customer_state, count(customer_id) from customers
where customer_state = 'SP'
group by customer_city
order by count(customer_id) desc;

sao paulo	SP	15540

#### 5. From the `closed_deals` table, how many distinct business segments are there (not including null)?

select count(distinct business_segment) from closed_deals;



#### 6. From the `closed_deals` table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).

select sum(declared_monthly_revenue), sum(distinct business_segment) from closed_deals
group by business_segment
order by sum(declared_monthly_revenue) desc
limit 3;

50695006	construction_tools_house_garden
8000000	phone_mobile
710000	home_decor

#### 7. From the `order_reviews` table, find the total number of distinct review score values.

select count(distinct review_score) from order_reviews;

5

#### 8. In the `order_reviews` table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.
ALTER TABLE order_reviews
ADD review_category varchar(255);

SELECT * FROM order_reviews;

SET SQL_SAFE_UPDATES = 0;

UPDATE order_reviews
SET review_category = "VERY BAD"
WHERE review_score = 1;

UPDATE order_reviews
SET review_category = "BAD"
WHERE review_score = 2;

UPDATE order_reviews
SET review_category = "AVERAGE"
WHERE review_score = 3;

UPDATE order_reviews
SET review_category = "GOOD"
WHERE review_score = 4;

UPDATE order_reviews
SET review_category = "VERY GOOD"
WHERE review_score = 5;

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM order_reviews;

SELECT review_category, review_score, Count(review_id) FROM order_reviews
GROUP BY review_category, review_score
ORDER BY Count(review_id) DESC;


VERY GOOD  5	57420
GOOD	   4	19200
VERY BAD   1	11858
AVERAGE	   3	8287
BAD	       2	3235

#### 9. From the `order_reviews` table, find the review value occurring most frequently and how many times it occurs.

SELECT review_score, Count(review_score) FROM order_reviews
GROUP BY review_score
ORDER BY Count(review_id) DESC;

5  57420