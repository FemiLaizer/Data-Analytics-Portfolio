# Customers' Escalation Dashboard

## Problem
The business lacked clear visibility into customer escalations, resolution speed, and recurring issue categories. Management needed a consolidated view to prioritize resources and reduce time-to-resolution.

## Action
- Cleaned and standardized escalation data (Power Query: fixed dates, removed duplicates, standardized priority/status values).
- Built an interactive Excel dashboard with KPI cards, PivotCharts and slicers for Location, Priority, Team and Ageing.
- Calculated key metrics: total received, resolved, unresolved, average resolution time, and high-priority counts.

## Key Metrics (dashboard values)
- **Total Received:** 975  
- **Total Resolved:** 520 (53%)  
- **Total Unresolved:** 455 (47%)  
- **Top Complaint Category:** FAULTY EQUIPMENT (372 cases)  
- **High Priority (Received / Resolved / Unresolved):** 185 / 95 / 90  
- **Average Resolution Time:** 20.9 days

## Key Insights (what management should act on)
- **High volume from Faulty Equipment** (372 cases) — invest in product QA or rapid replacement/repair program to reduce repeat complaints.
- **Resolution rate is 53%** — nearly half still unresolved; consider staffing reallocation or escalation workflow improvements.
- **Average resolution time (20.9 days)** is long — set SLA targets (e.g., reduce to ≤14 days) and monitor weekly.
- **High-priority unresolved cases (~90)** require immediate triage — create a fast-track process to avoid churn.

## Recommended Next Steps
1. Create a focused task force to address Faulty Equipment root causes.  
2. Implement SLAs and weekly tracking for unresolved cases >14 days.  
3. Use dashboard filters to monitor team performance and assign resources to top 10 customers/locations causing most escalations.

## Files
- `Customer_Complaints_Dashboard.xlsx` — interactive workbook.  
- `Customer_Complaints_Dashboard.png` — preview image.
- [Screenshot here].
- ![alt text](Customer_Complaints_Dashboard.png)

## Skills Demonstrated
- Data cleaning & transformation (Power Query)  
- PivotTables & PivotCharts  
- KPI design & dashboard layout  
- Data storytelling & actionable insight generation
