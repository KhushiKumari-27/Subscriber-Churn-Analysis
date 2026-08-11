# Subscriber Churn Analysis

## 📌 Project Overview

This project analyzes customer churn for a subscription-based business using SQL.

The analysis focuses on identifying patterns associated with customer churn, understanding revenue loss, and identifying high-risk customer segments that may require targeted retention strategies.

## 🎯 Objectives

- Calculate the overall customer churn rate.
- Analyze churn across different customer categories.
- Identify factors associated with higher churn.
- Analyze revenue generated and revenue lost due to churn.
- Identify high-risk and high-value customers.
- Provide actionable recommendations to improve customer retention.

## 🛠️ Tools & Technologies

- SQL
- CSV datasets
- MySQL

## 🔍 Analysis Performed

The analysis covers:

- Overall churn rate
- Churn by contract type
- Churn by customer tenure
- Churn by payment/revenue level
- Impact of technical support on churn
- Total revenue and average revenue per customer
- Revenue loss due to churn
- Revenue loss across tenure groups
- High-value churned customers
- Identification of high-risk customers
- Identification of high-value customers at risk of churn

## 📊 Key Findings

### Overall Churn

The overall churn rate is **58.6%**, indicating that more than half of the customers have discontinued the service.

### Contract Type

Month-to-month customers have a significantly higher churn rate of approximately **71.78%**, compared with approximately **38–40%** for long-term contracts.

This suggests that customers with less long-term commitment are more likely to churn.

### Customer Tenure

Customers with **0–12 months of tenure** have a churn rate of approximately **71%**, higher than longer-tenure customers.

This indicates that early-stage customer retention is a major challenge.

### Revenue

The business generated approximately **2.41M in total revenue**, while approximately **1.38M** of revenue came from customers who have churned.

The average revenue per customer was approximately **2,573.18**.

### Revenue Loss by Tenure

Customers with 0–12 months of tenure accounted for the highest proportion of revenue loss, with approximately **67%** of their revenue coming from churned customers.

### High-Value Customers at Risk

The analysis identified approximately **6 high-value customers** who are also at high risk of churn.

These customers are characterized by factors such as high monthly charges, short tenure, and lack of technical support.

## 💡 Recommendations

Based on the analysis:

1. Improve early customer engagement through onboarding programs and regular follow-ups.
2. Encourage customers to choose long-term contracts through discounts or additional benefits.
3. Enhance technical support services to improve customer satisfaction.
4. Prioritize retention efforts for high-value customers at high risk of churn.
5. Focus retention strategies on customers in their first year.

## 📁 Repository Structure

```text
Subscriber-Churn-Analysis/
│
├── README.md
│
├── data/
│   └── CSV datasets
│
├── sql/
│   └── SQL analysis queries
│
└── insights/
    └── Customer churn analysis insights
