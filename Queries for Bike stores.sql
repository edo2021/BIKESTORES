select product_name,list_price
from 
production.products
order by
list_price,
product_name
OFFSET 2 ROWS
fetch next 2 rows only;

--top 10

select TOP 10
PRoduct_name,list_price
from production.products
order by
list_price desc;

-- percent
select TOP 1 percent
PRoduct_name,list_price
from production.products
order by
list_price desc;

-- with ties
select TOP 3 with ties
PRoduct_name,list_price
from production.products
order by
list_price desc;

-- distinct
select DISTINCT
    city,
	state
FROM 
	sales.customers
	

	--where 
 SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	category_id =1
ORDER BY
	list_price DESC;


		--where  AND
 SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	category_id =1 AND model_year =2018
ORDER BY
	list_price DESC;

	--GREATER THAN and  EQUAL OPERATOR

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price >300 AND model_year = 2018
ORDER BY
    list_price DESC;


	-- OR operator
SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price >300 OR model_year = 2018
ORDER BY
    list_price DESC;

	--between 

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price BETWEEN 1899.00 AND 1999.99
ORDER BY
    list_price DESC;

	-- IN

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price IN( 299.99,369.99,489.99)
ORDER BY
    list_price DESC;


	-- Finding rows whose values contain a string



SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    product_name LIKE '%cruiser%'
ORDER BY
    list_price DESC;

	-- NUL customers who do not have phone number recorded.

SELECT
	customer_id,
	first_name,
	last_name,
	phone
FROM
	sales.customers
WHERE
	phone =NULL
ORDER BY
	first_name,
	last_name;

-- IS NULL

SELECT
	customer_id,
	first_name,
	last_name,
	phone
FROM
	sales.customers
WHERE
	phone IS NULL
ORDER BY
	first_name,
	last_name;

	--IS NOT NULL

SELECT
	customer_id,
	first_name,
	last_name,
	phone
FROM
	sales.customers
WHERE
	phone IS NOT NULL
ORDER BY
	first_name,
	last_name;


-- AND operator
SELECT
    *
FROM
    production.products
WHERE
    category_id = 1 AND list_price > 400
ORDER BY
    list_price DESC;

	-- multiple AND operator

SELECT
    *
FROM
    production.products
WHERE
    category_id = 1
AND list_price > 400
AND brand_id = 1
ORDER BY
    list_price DESC;

-- AND and OR 
SELECT
    *
FROM
    production.products
WHERE
    brand_id = 1
OR brand_id = 2
AND list_price > 1000
ORDER BY
    brand_id DESC;

	--
SELECT
    *
FROM
    production.products
WHERE
    (brand_id = 1 OR brand_id = 2)
AND list_price > 1000
ORDER BY
    brand_id;
