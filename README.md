# 🚀 Nvidia Sales & Performance Analytics Dashboard

An end-to-end data analytics project analyzing Nvidia's global sales, product category revenue, marketing efficiency, customer satisfaction (CSAT), and regional adoption metrics using **Python, SQL, and Power BI**.

---

## 📌 Project Overview
This project provides an executive-level performance overview for Nvidia's hardware and business segments. The primary objective is to evaluate revenue drivers, track marketing ROI, analyze competitor landscape, and understand global AI/ML adoption trends to support strategic business decision-making.

---

## 📊 Key Executive Dashboard Features & Insights

### 1. Financial & Marketing KPIs
* **Total Net Revenue:** `$39.34 Billion`
* **Marketing Spend & Efficiency:** Generated `$4.15 Billion` in marketing spend with a strong **8.49x Marketing ROI**.
* **Customer Satisfaction (Avg CSAT):** `3.01 / 5.0` — Highlights potential areas for post-sales support and product enhancement.

### 2. Category & Market Distribution
* **Top Revenue Categories:** Led by **AI** (`$9.9Bn`) and **Data Center** (`$9.8Bn`), followed closely by **Gaming** and **OEM**.
* **Competitor Benchmarking:** Evaluates market position against key industry competitors including Intel Xeon, Google TPU, and AMD Radeon RX series.
* **Regional AI/ML Adoption:** Balanced global distribution across Europe (16.83%), South America (16.74%), APAC (16.84%), North America (16.58%), and Middle East (16.50%).

### 3. Seasonality & Trend Analysis
* **Revenue Peaks:** Strongest revenue performance observed during **Q2/Q3 (April - July)**.
* **Seasonal Dip:** Revenue troughs identified in **February** (`~$3.05Bn`), presenting opportunities for targeted promotional campaigns.

---

## 🛠️ Tech Stack & Tools Used
* **Data Processing & Cleaning:** Python (Pandas, NumPy)
* **Database & Querying:** SQL (PostgreSQL / MySQL)
* **Data Visualization & BI:** Microsoft Power BI (DAX, Power Query, Data Modeling)
* **Version Control:** Git & GitHub

---

## 📁 Repository Structure
```text
├── data/
│   ├── raw_nvidia_sales.csv         # Raw dataset
│   └── cleaned_nvidia_sales.csv     # Transformed & cleaned data
├── scripts/
│   ├── data_cleaning.py             # Python script for ETL & data cleaning
│   └── analytical_queries.sql       # SQL scripts for aggregations & KPIs
├── dashboard/
│   ├── Nvidia_Sales_Dashboard.pbix  # Power BI Desktop report file
│   └── dashboard_preview.png        # Executive Dashboard Screenshot
└── README.md                        # Project documentation
```

---
## 📈 Dashboard Preview
🔧 How to Replicate This Project 
1. Clone the Repository:

```
git clone https://github.com/Kartikey-Gehra4994/Nvidia-sales-Analysis.git
cd nvidia-sales-analytics
```

## Data Cleaning & ETL:
Run the Python cleaning script:

```
python scripts/data_cleaning.py
```

## Open Dashboard:

- Open Nvidia_Sales_Dashboard.pbix in Power BI Desktop.

- Ensure data source paths are refreshed to point to your local dataset.

---
## 💡 Key Business Recommendations
1. Capitalize on Mid-Year Seasonality: Align major product launches and marketing drives with the Q2/Q3 demand peak (April–July).

2. Targeted CSAT Improvement: Investigate customer feedback in the Gaming and OEM segments to elevate average CSAT scores above 4.0.

3. Regional Market Penetration: Maintain current balanced regional distribution while expanding enterprise AI solutions in high-growth APAC and EMEA markets.

---
# 👤 Author
Name: kartikey Gehra

LinkedIn: https://www.linkedin.com/in/kartikey-gehra-11b259344/
