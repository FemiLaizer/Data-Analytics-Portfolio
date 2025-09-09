# 📊 Ad Spend vs Sales Hypothesis Test

**File:** `Ad_Spend_vs_Sales_Hypothesis_Test.xlsx`

---

## 📌 Overview

This project analyzes whether **higher advertising spend (Ad\_Spend ≥ 3000)** leads to significantly **higher sales** using a **t-test hypothesis test** in Excel.

---

## 📂 Dataset

Monthly advertising spend and sales figures were split into **Low Spend (< 3000)** and **High Spend (≥ 3000)** groups for comparison.

| Month | Ad\_Spend (\$) | Sales (\$) | Low Spend (<3000) | High Spend (≥3000) |
| ----- | -------------- | ---------- | ----------------- | ------------------ |
| Jan   | 2000           | 22000      | 22000             |                    |
| Feb   | 2500           | 25000      | 25000             |                    |
| Mar   | 3000           | 28000      |                   | 28000              |
| Apr   | 1500           | 18000      | 18000             |                    |
| May   | 4000           | 35000      |                   | 35000              |
| Jun   | 2000           | 22000      | 22000             |                    |
| Jul   | 2500           | 25000      | 25000             |                    |
| Aug   | 3000           | 28000      |                   | 28000              |
| Sep   | 1500           | 18000      | 18000             |                    |
| Oct   | 4000           | 35000      |                   | 35000              |
| Nov   | 2000           | 22000      | 22000             |                    |
| Dec   | 3000           | 28000      |                   | 28000              |

---

## 🔎 Methodology

1. **Split Data:** Grouped sales into Low vs High ad spend.
2. **Hypothesis Setup:**

   * **H₀ (Null):** No difference in sales between low and high spend.
   * **H₁ (Alt):** High spend leads to higher sales.
3. **t-Test in Excel:** Used `t-Test: Two-Sample Assuming Equal Variances` from Data Analysis ToolPak.
4. Compared **p-value** to significance level (α = 0.05).

---

## ✅ Results

* **p-value (two-tail):** \[Insert Excel output here]
* If **p < 0.05** → Reject H₀ → conclude **higher ad spend significantly increases sales**.
* If **p ≥ 0.05** → Fail to reject H₀ → no significant difference.

---

## 💡 Insights

* Clear upward trend between ad spend and sales.
* Hypothesis testing validates whether **marketing investments** produce measurable returns.
* Business leaders can use such analysis to **optimize ad budgets**.

---

## 🛠️ Skills Demonstrated

* Data grouping & preparation in Excel
* Statistical hypothesis testing (t-Test)
* Result interpretation for business decisions
* Data storytelling with supporting charts & insights

---
### Regression_Insight
![alt text](image1.png)

### Hypothesis_Test_Insight
![alt text](image2.png)

---