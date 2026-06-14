use boa;
show tables;

select  Warehouse_ID, Supplier_ID,Location,Product_Category, Warehouse_Size from supply_chain_data ;

SELECT
    Warehouse_ID,
    location,
    COUNT(*) AS count
FROM supply_chain_data
GROUP BY warehouse_id, location
HAVING COUNT(*) > 1;


select * from supply_chain_data where warehouse_id = 'WH012';

select * from supply_chain_data;

# number of warehouse at each location
select Location , Count(distinct warehouse_id) as count from supply_chain_data
group by location 
order by count desc;

------- Delivery Delays Solution -------------

# 1. Which warehouses have the highest total delivery time?
SELECT 
    Warehouse_ID,
    Location,
    MAX(Total_Delivery_Time) AS max_delivery_time
FROM supply_chain_data
GROUP BY Warehouse_ID, Location
ORDER BY max_delivery_time DESC;


# Which locations consistently have delayed shipments?
select Location,AVG(Shipping_Time_Days) from supply_chain_data 
group by  Location
order by AVG(Shipping_Time_Days) desc limit 10;


#Does employee count affect delivery speed?
SELECT Warehouse_ID ,location, Employee_Count, Warehouse_Size, AVG(Total_Delivery_Time)as Avg_Time FROM supply_chain_data
where Employee_Count <= ( select AVG(Employee_Count) from supply_chain_data) 
group by Warehouse_ID,location, Employee_Count,Warehouse_Size
order by AVG(Total_Delivery_Time) desc limit 10;

/*
Insights :
 o Warehouse :  miami 286 , 382 ; 
				denver 307; 	
                chicago 414 , 079; 
                new york 434, 204
 were having high delivery time , but can be solved by increasing number of employee count . Because the average employee 
 count were lower at these locations
*/

select Location,
 Warehouse_ID, 
Total_Delivery_Time ,
DENSE_RANK() over(partition by Location order by Total_Delivery_Time asc) as Warehouse_Rank 
from supply_chain_data;

# Number of warehouse having delivery time more than avg delivery time in each location
select Location, Count(distinct warehouse_id) as Number_of_Warehouse , AVG(Total_Delivery_Time) from supply_chain_data
where Total_Delivery_Time >=(select AVG(Total_Delivery_Time) from supply_chain_data)
group by Location 
order by Number_of_Warehouse desc;

---------  Inventory Management--------------

#Which warehouses have excess inventory?
select Warehouse_ID ,location, Current_Stock, Demand_Forecast , (Current_Stock - Demand_Forecast) as Extra_Invent
from supply_chain_data
where Current_Stock > Demand_Forecast
order by Extra_Invent desc limit 35;



#Which product categories have highest demand?
select Product_Category , SUM(Monthly_Sales) as Total_Sales from supply_chain_data
group by Product_Category
order by Total_Sales desc ;


#Demand trend by location
select Location , SUM(Monthly_Sales) as total_sales from supply_chain_data
group by Location
order by total_sales desc ;

/* Insights :
Los angeles is the location having high number of warehouses but still have low sales
*/

#Which warehouses have highest operational cost?
select Warehouse_ID,Location , sum(Operational_Cost) as  total_operation_cost from supply_chain_data
group by Warehouse_ID, Location
order by total_operation_cost desc;

#
SELECT 
    Location,
    Warehouse_ID,
    Supplier_ID,
    GROUP_CONCAT(DISTINCT Product_Category ORDER BY Product_Category SEPARATOR ', ') AS product_categories
FROM supply_chain_data
GROUP BY 
    Location,
    Warehouse_ID,
    Supplier_ID
ORDER BY 
    Location,
    Warehouse_ID;

# Warehouses in each location whose profit are less but have high employee count    

SELECT Warehouse_ID,Location,Product_Category,Profit,Employee_Count
FROM (
    SELECT *,
           AVG(Employee_Count) OVER (PARTITION BY Location) AS Avg_emp
    FROM supply_chain_data
) t
WHERE Profit < 0
AND Employee_Count > Avg_emp;


# Highly Profitable Location

select  Location, SUM(Profit) as Total_Profit from supply_chain_data
group by Location
order by Total_Profit desc;


# Highly Profitable Product 

select  Product_Category, SUM(Profit) as Total_Profit from supply_chain_data
group by Product_Category
order by Total_Profit desc;

# Number of warehouse of each Product_Category at specific location 

select Location, Product_Category, Count(distinct warehouse_id) as Warehouse_Count
from supply_chain_data
where Location = 'Atlanta'
group by Location , Product_Category
order by Warehouse_Count desc;
