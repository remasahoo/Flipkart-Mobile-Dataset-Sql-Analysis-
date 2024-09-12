create database flipkart_mobile_database_by_Rema;
-- Q & A --
-- What are the distinct brands available in the dataset?
select distinct brand from `flipkart mobile - 2`;
-- Apple
-- Poco
-- Realme
-- Samsung
-- Xiaomi
-- How many unique models are there in the dataset?
select count(distinct model) as unique_models from `flipkart mobile - 2`;
-- 119
-- What is the average battery capacity across all devices?
select avg(battery_capacity) as average_battery_capacity from `flipkart mobile - 2`;
-- 4529.3977
-- Which brand has the highest average ratings?
select brand, avg(ratings)  average_ratings from `flipkart mobile - 2`
group by brand
order by average_ratings desc limit 1;
-- Apple    4.562499999999997
-- How many devices have a display size greater than 6 inches?
select count(*) from `flipkart mobile - 2` 
WHERE display_size > 6;
-- 387
-- How many devices have in this data?
select count(*) from `flipkart mobile - 2` ;
-- 430
-- What is the most common base color among the devices?
select base_color, count(*)  color_count from `flipkart mobile - 2`
group by base_color
order by color_count desc limit 1;
-- Blue    117
-- What is the average discount percentage offered on sales?
select avg(discount_percent)  average_discount_percentage from `flipkart mobile - 2`;
-- 0.10799999999999994
-- Which model has the highest sales price?
select model, sales_price from `flipkart mobile - 2`
order by sales_price desc limit 1;
-- Galaxy Z Fold3 5G         157999
-- What is the total number of rear cameras across all devices?
select sum(num_rear_camera) total_rear_cameras from `flipkart mobile - 2`;
-- 1249
-- What is the average number of ratings per device?
SELECT AVG(num_of_ratings) AS average_ratings_per_device from `flipkart mobile - 2`;
-- 23567.9442
