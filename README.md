# Supply Chain & Logistics Analytics Project

## Overview

This project analyzes a nationwide supply chain and warehouse network to identify operational inefficiencies affecting delivery performance, inventory management, operational costs, and profitability.

Using Python, SQL, and Power BI, the analysis uncovers critical bottlenecks across 313 warehouses operating in 10 major US cities and provides actionable business recommendations to improve supply chain efficiency.

---

## Business Problem

The company operates a large warehouse network across multiple locations and product categories. However, several operational challenges were impacting business performance:

* Delivery delays causing poor customer experience
* Inventory imbalances resulting in overstocking and stockouts
* Inefficient workforce allocation across warehouses
* High operational costs
* Loss-making warehouse operations
* Weak demand forecasting accuracy

The goal of this project was to identify the root causes of these issues and recommend data-driven solutions.

---

## Project Objectives

### 1. Reduce Delivery Delays

Identify bottleneck warehouses and determine whether staffing shortages contribute to delayed deliveries.

### 2. Optimize Inventory Management

Detect overstocked and understocked warehouses and identify opportunities for inventory redistribution.

### 3. Improve Demand Forecasting

Evaluate how current inventory aligns with forecasted demand.

### 4. Increase Profitability

Identify loss-making warehouses, product categories, and operational inefficiencies affecting margins.

---

## Dataset Information

| Metric              | Value |
| ------------------- | ----- |
| Total Records       | 500   |
| Original Features   | 20    |
| Engineered Features | 9     |
| Final Features      | 29    |
| Unique Warehouses   | 313   |
| Suppliers           | 375   |
| Cities              | 10    |
| Product Categories  | 5     |

### Product Categories

* Apparel
* Electronics
* Furniture
* Automotive
* Groceries

### Locations Covered

* Miami
* Los Angeles
* Atlanta
* New York
* Dallas
* San Francisco
* Denver
* Chicago
* Houston
* Seattle

---

## Technology Stack

### Python

Used for:

* Data Cleaning
* Feature Engineering
* Exploratory Data Analysis
* Object-Oriented Analysis Functions
* Business Rule Development

Libraries:

* Pandas
* NumPy
* Matplotlib
* Seaborn

### SQL (MySQL)

Used for:

* Data Validation
* Aggregation
* Window Functions
* Ranking Analysis
* Inventory and Profitability Queries

### Power BI

Used for:

* Interactive Dashboard Development
* KPI Monitoring
* Geographical Analysis
* Executive Reporting

---

## Feature Engineering

Nine new business-focused features were created:

| Feature             | Purpose                      |
| ------------------- | ---------------------------- |
| Warehouse_Size      | Classify warehouse scale     |
| Revenue_Per_Unit    | Product pricing assumption   |
| Monthly_Revenue     | Revenue calculation          |
| Employee_Salary     | Derived payroll cost         |
| Total_Cost          | Overall operational cost     |
| Profit              | Warehouse profitability      |
| Total_Delivery_Time | End-to-end delivery duration |
| Fulfillment_Rate    | Inventory vs demand ratio    |
| Damaged_Rate        | Product damage measurement   |

---

## Key Business Insights

### Revenue Analysis

* Total monthly revenue exceeds **$440 Million**
* Automotive products generate approximately **$242 Million**, the highest revenue contribution
* Groceries generate the lowest revenue despite high operational effort

### Delivery Performance

* Six warehouses experience delivery times of up to **12 days**
* Denver and New York have the highest average shipping times
* Los Angeles has the fastest average shipping performance

### Workforce Optimization

Several delayed warehouses were operating below average staffing levels, indicating workforce shortages as a major contributor to delivery delays.

Examples:

* WH286
* WH307
* WH434
* WH414

### Inventory Optimization

Analysis revealed:

* 225 Overstocked Warehouses
* 275 Understocked Warehouses

Inventory redistribution could eliminate unnecessary procurement and improve inventory utilization.

Example:

New York Furniture operations contained over **7,000 surplus units** that could satisfy shortages within the same network.

### Profitability Analysis

* 39 warehouses operate at a loss
* 19 loss-making warehouses also maintain above-average employee counts
* Groceries emerged as the most common loss-making category

This indicates significant opportunities for cost optimization and workforce redistribution.

---

## Data Quality Challenges

Several warehouse identifiers appeared multiple times due to:

* Multiple suppliers served by the same warehouse
* Multiple product categories handled by the same warehouse
* Warehouses operating across multiple locations

Each record was treated as a unique operational entity using:

Warehouse_ID + Location + Supplier_ID + Product_Category

This ensured analytical accuracy.

---

## Dashboard Features

The Power BI dashboard includes:

* Revenue KPI Cards
* Profitability Tracking
* Delivery Performance Analysis
* Inventory Monitoring
* Product Category Performance
* Geographic Warehouse Mapping
* Employee Count vs Delivery Time Analysis
* Warehouse Performance Matrix

---

## Business Recommendations

### Workforce Redistribution

Transfer employees from overstaffed warehouses to understaffed bottleneck locations.

### Inventory Rebalancing

Redistribute excess inventory internally before initiating new procurement orders.

### Delivery Optimization

Study operational practices in Los Angeles and replicate successful routing strategies in slower regions.

### Profitability Improvement

Review low-margin grocery operations and optimize staffing and inventory allocation.

### Performance Monitoring

Implement warehouse-level KPI monitoring for:

* Delivery Time
* Profitability
* Fulfillment Rate
* Inventory Utilization

---

## Expected Business Impact

Implementation of recommendations can potentially result in:

* Reduced delivery delays
* Lower operational costs
* Improved inventory utilization
* Better customer satisfaction
* Increased warehouse profitability
* Enhanced supply chain efficiency

---

## Project Deliverables

* Cleaned and enriched dataset
* Python analysis scripts
* SQL analytical queries
* Power BI dashboard
* Business insights report
* Executive recommendations

---

## Author

**Nitin Tiwari**

Business Analyst | Data Analyst

Skills:

* SQL
* Python
* Power BI
* Data Analysis
* Business Analytics
* Supply Chain Analytics
* Data Visualization

---

## Contact

Feel free to connect for feedback, collaboration, or opportunities in Data Analytics, Business Analytics, and Supply Chain Analytics.

