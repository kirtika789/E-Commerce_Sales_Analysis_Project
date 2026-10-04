# E-commerce Sales Analysis Dashboard

## Project Overview

This project is an interactive **E-commerce Sales Analysis Dashboard** developed in **Power BI** to analyze sales performance, profitability, customer orders, product performance, payment methods, locations, and order-related KPIs.

The report is organized into **two connected dashboard pages** using the same cleaned e-commerce dataset:

1. **Sales Overview** – overall business and sales performance.
2. **Order & KPI Analysis** – delivery, returns, cancellations, discounts, and order performance.

The project demonstrates data cleaning, transformation, DAX measures, KPI development, data visualization, and business insight generation.

## Objectives

- Analyze overall e-commerce sales performance.
- Track total sales, estimated profit, total orders, and average order value.
- Identify high-performing categories and products.
- Analyze monthly sales trends.
- Compare sales across cities and states.
- Understand payment-mode performance.
- Monitor delivered, returned, cancelled, and pending orders.
- Analyze return and cancellation rates.
- Analyze discount patterns.
- Build an interactive Power BI report for business decision-making.

## Dataset

The project uses an e-commerce orders dataset containing fields such as:

- Order ID and Order Date
- Customer Name, Email, and Phone
- City and State
- Product and Category
- Quantity and Unit Price
- Discount
- Payment Mode
- Order Status
- Delivery Date
- Sales / Net Amount
- Profit-related information

## Data Cleaning & Preparation

Data preparation was performed before building the dashboard.

Key activities included:

- Handling missing values.
- Removing duplicate records where required.
- Converting Quantity, Unit Price, and Discount to numeric data types.
- Converting Order Date to a proper date format.
- Creating Month, Year, and Day fields from Order Date.
- Standardizing text values.
- Handling invalid or missing dates.
- Creating sales and profit-related fields.
- Filtering incomplete records where Month or Profit information was unavailable for the final analytical dataset.

The current Power BI report contains **331 loaded records** and **325 non-blank Order IDs**.

## Key Calculations

### Sales

```text
Sales = Quantity × Unit Price
```

### Discount Amount

```text
Discount Amount = Sales × Discount / 100
```

### Net Amount

```text
Net Amount = Sales − Discount Amount
```

### Estimated Profit

The dataset does not contain actual business cost information. Therefore, profit is estimated using a 20% margin:

```text
Estimated Profit = Net Amount × 20%
```

This is an analytical estimate, not actual accounting profit.

## Important DAX Measures

### Total Orders

```DAX
Total Orders =
CALCULATE(
    DISTINCTCOUNT('public orders'[Order_ID]),
    'public orders'[Order_ID] <> BLANK()
)
```

### Total Sales

```DAX
Total Sales =
SUM('public orders'[Net_Amount])
```

### Total Profit

```DAX
Total Profit =
SUM('public orders'[Profit])
```

### Average Order Value

```DAX
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)
```

### Returned Orders

```DAX
Returned Orders =
CALCULATE(
    COUNT('public orders'[Order_ID]),
    'public orders'[Order_Status] = "Returned"
)
```

### Return Rate

```DAX
Return Rate =
DIVIDE(
    [Returned Orders],
    [Total Orders],
    0
)
```

### Cancelled Orders

```DAX
Cancelled Orders =
CALCULATE(
    COUNT('public orders'[Order_ID]),
    'public orders'[Order_Status] = "Cancelled"
)
```

### Cancellation Rate

```DAX
Cancellation Rate =
DIVIDE(
    [Cancelled Orders],
    [Total Orders],
    0
)
```

### Delivered Orders

```DAX
Delivered Orders =
CALCULATE(
    COUNT('public orders'[Order_ID]),
    'public orders'[Order_Status] = "Delivered"
)
```

### Delivery Rate

```DAX
Delivery Rate =
DIVIDE(
    [Delivered Orders],
    [Total Orders],
    0
)
```

### Average Discount

```DAX
Average Discount =
AVERAGE('public orders'[Discount])
```

## Dashboard Pages

### Page 1 – Sales Overview

The first page provides an overall view of e-commerce business performance.

**KPIs**
- Average Order Value
- Total Orders
- Total Profit
- Total Sales

**Visualizations**
- Sales by Month
- Sales by Payment Mode
- Profit by Category
- Sales by Category
- Sales by Product
- Sales by Order Status
- Sales by City
- Sales by State

**Interactive filters**
- Month
- City
- Payment Mode

This page acts as the **business overview / executive summary**.

### Page 2 – Order & KPI Analysis

The second page focuses on operational and order-related performance.

**KPIs**
- Delivery Rate
- Return Rate
- Cancellation Rate
- Average Discount
- Delivered Orders
- Returned Orders
- Cancelled Orders

**Visualizations**
- Average Order Value by Category
- Average Discount
- Return Rate by Product
- Delivered Orders
- Returned Orders
- Cancellation Rate
- Cancelled Orders

This page provides deeper operational analysis of order performance.

## Key Dashboard Results

| KPI | Current Value |
|---|---:|
| Total Sales | ~₹3.70M |
| Total Profit | ~₹684.90K |
| Total Orders | 325 |
| Average Order Value | ~₹10.54K |
| Average Discount | 7.63% |
| Loaded Records | 331 |

The profit figure is an **estimated profit based on the project's 20% margin assumption**.

## Business Insights

- **Electronics** is the strongest sales category.
- **Laptop, Chair, and Mouse** are among the higher-selling products by sales value.
- Sales vary across months, indicating changing demand over time.
- **Pune and Bengaluru** are among the strongest cities by sales value.
- **Maharashtra** contributes a significant share of state-level sales.
- Wallet, COD, and NetBanking contribute substantial portions of overall sales.
- The dashboard shows a significant number of returned and cancelled orders, suggesting that order fulfillment and customer experience should be monitored.
- Return rates vary across products and can be investigated further for product quality, customer expectations, descriptions, or fulfillment issues.
- The average discount is approximately **7.63%**, providing a useful view of promotional pricing.

## Tools & Technologies

- **Power BI** – Dashboard development and visualization
- **DAX** – Measures and KPI calculations
- **Python** – Data cleaning and preprocessing
- **Pandas** – Data manipulation
- **Jupyter Notebook / Google Colab** – Data preparation
- **Excel / CSV** – Dataset handling

## Project Workflow

```text
Raw E-commerce Dataset
        ↓
Data Cleaning & Preprocessing
        ↓
Missing Value & Duplicate Handling
        ↓
Feature Creation
        ↓
Sales / Profit Calculations
        ↓
Power BI Data Model
        ↓
DAX Measures & KPIs
        ↓
Interactive Visualizations
        ↓
Business Insights
```

## Report Structure

```text
E-commerce Sales Analysis
│
├── Page 1: Sales Overview
│   ├── Sales KPIs
│   ├── Monthly Sales
│   ├── Category Analysis
│   ├── Product Analysis
│   ├── City & State Analysis
│   ├── Payment Mode Analysis
│   └── Order Status Analysis
│
└── Page 2: Order & KPI Analysis
    ├── Delivery Rate
    ├── Return Rate
    ├── Cancellation Rate
    ├── Average Discount
    ├── Delivered Orders
    ├── Returned Orders
    ├── Cancelled Orders
    ├── Product Return Analysis
    └── Category AOV Analysis
```

## Conclusion

This project provides a two-page interactive Power BI report for analyzing e-commerce sales and order performance. The first page gives a high-level business view, while the second page provides deeper operational KPI analysis.

The project demonstrates practical skills in **data cleaning, data analysis, Power BI visualization, DAX, KPI development, and business insight generation**.

## Skills Demonstrated

**Power BI | DAX | Data Cleaning | Data Analysis | Data Visualization | KPI Development | Business Intelligence | Python | Pandas | Excel | Dashboard Design**

## Author

**Kirtika Singh**  
B.Tech Information Technology  
Data Analytics / Business Intelligence Enthusiast
