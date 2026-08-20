# Data Warehouse and Analytics Project
____
This is my first data warehouse project. I completed it while following YouTube tutorials of Data with Baara on the subject SQL Data Warehouse from Scratch. The project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating insights.
_____
# Data Architecture
The data architecture for this project follows Medallion Architecture **Bronze**, **Silver**, **Gold** layers:
  1. **Bronze layer:** stores raw data a-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
  2. **Silver layer:** this layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
  3. **Gold layer:** Houses business-ready data modeled into a star schema required for reporting and analytics.
_____
# Project Requirements
__
## Building the Data Warehouse (Data Engineering)

### Objective
Devlop a modern data warehuse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

### Specifications
  + **Data Sources:** import data from two source systems (ERP and CRM) provided as CSv files.
  + **Data Quality:** cleanse and resolve data quality issues prior to analysis.
  + **Integration:** combine both spources into a single, user-friendly data model designed for analytical queries.
  + **Scope:** focus on the latest dataset only; historization of data is not required.
  + **Documentation:** provide clear documentation of the data model to support both business stakeholders and analytics teams.
___
## BI: Analytics & Reporting (Data Analysis)

### Objective
Develop SQL-based analytics to deliver detailed insights into:
  + **Customer Behavior**
  + **Product Performance**
  + **Sales Trends**
These insights empower stakeholders with key business metrics, enabling strategic decision-making.
  
