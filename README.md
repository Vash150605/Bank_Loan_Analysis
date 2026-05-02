# Retail Bank Loan Risk Analysis

**A comprehensive data analysis project for predicting and understanding loan defaults using Python, SQL, and Tableau.**

## 📋 Project Overview

This project analyzes a dataset of **3,500 loan applications** from a retail bank to identify key risk factors for loan defaults. It includes data cleaning, exploratory analysis, SQL-based reporting, and an interactive Tableau dashboard for business stakeholders.

**Goal**: Help the bank make better lending decisions by understanding default patterns and visualizing risk metrics.


## 📊 Dataset

- **Source**: `raw_loan_data.csv`
- **Rows**: 3,500
- **Columns**: 9

### Features

| Column                    | Type     | Description |
|--------------------------|----------|-----------|
| `Loan_ID`                | int      | Unique loan identifier |
| `Age`                    | int      | Age of applicant |
| `Income`                 | float    | Annual income (some missing values) |
| `Employment_Length_Years`| int      | Years employed (-1 values cleaned) |
| `Home_Ownership`         | string   | RENT, MORTGAGE, OWN |
| `Loan_Intent`            | string   | MEDICAL, EDUCATION, etc. |
| `Loan_Amount`            | float    | Requested loan amount |
| `Interest_Rate`          | float    | Interest rate on loan |
| `Loan_Status`            | int      | **Target**: 1 = Default, 0 = No Default |

## 🛠️ Data Processing Steps

1. **Loading** raw CSV data
2. **Missing Values**: Filled `Income` with median
3. **Data Quality**: Replaced negative `Employment_Length_Years` (-1) with 0
4. **Export**: Saved cleaned dataset as `cleaned_loan_data.csv`

## 🔍 Key Analyses

### SQL Queries (in `SQL_Query_File.sql`)

- **Overall Default Rate**
- **Default Rate by Home Ownership** (ranked)

### Python Notebook Highlights (`loan_analysis.ipynb`)

- Descriptive statistics
- Interest rate distribution by default status (boxplot)
- Data validation and cleaning

### Tableau Dashboard

Interactive visualizations including:
- Default rates by home ownership and loan intent
- Risk profiles by age, income, loan amount
- Key performance indicators (KPIs)

## 🚀 How to Run

### Prerequisites
- Python 3.x with pandas, numpy, matplotlib, seaborn
- Tableau Desktop (for .twbx file)
- SQLite / PostgreSQL / any SQL engine

### Python Setup
```bash
pip install pandas numpy matplotlib seaborn jupyter
jupyter notebook notebooks/loan_analysis.ipynb
