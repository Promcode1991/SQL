--ARIWODOR PROMISE CIDI TASK 9

--FROM CUSTOMER DATA

SELECT * 
FROM "CUSTOMER DATA"

--using the OR operator, filter out Washinton or Wisconsin
SELECT * FROM "CUSTOMER DATA"
WHERE "State" = 'Washington' or "State" = 'Wisconsin'

--using the NOT operator, filter out where the city is not Henderson
SELECT * FROM "CUSTOMER DATA"
WHERE "City" != 'Henderson'

--using the NOT and AND operators, filter out where the region is not Central region is not North
SELECT * FROM "CUSTOMER DATA"
WHERE "Region" != 'Central' AND "Region" != 'North'

--using the IN operator, filter out the cities are Concord , Seattle

SELECT* FROM "CUSTOMER DATA"
WHERE "City" IN ('Concord', 'Seattle')

--using the BETWEEN operator, filter out ages between 20 and 50
SELECT * FROM "CUSTOMER DATA"
WHERE "Age" BETWEEN 20 and 50

--using the LIKE operator, filter out state with Cali
SELECT * FROM "CUSTOMER DATA"
WHERE "State" LIKE 'Cali%'

--using the LIKE operator, filter out customer ID with SF
SELECT * FROM "CUSTOMER DATA"
WHERE "Customer ID" LIKE 'SF%'


--FROM SALES DATA

select * from sales_data

--using the OR operator, filter out standard class or second class
select * from sales_data
where ship_mode = 'Standard Class' or ship_mode = 'Second Class'

--using the NOT operator, filter out where ship mode is not First class
select * from sales_data
where ship_mode != 'First Class'

--using the LIKE operator, filter out where order id is CA
select * from sales_data
where order_ID LIKE '%CA%'


--FROM PRODUCT DATA

select * from product_data

--using the OR operator, filter out where category is office supply OR Technology
select * from product_data
where category = 'Office Supplies' OR category = 'Technology'

--using the NOT operator, filter out where category not furniture
select * from product_data
where category != 'Furniture'

--using the NOT and AND operator, filter out where subcategory is not storage and not appliances
select * from product_data
where sub_category != 'storage' AND sub_category != 'appliances'
