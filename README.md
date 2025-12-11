# Analyzing Kickstarter Projects Using SQL

## Project Overview

This project explores Kickstarter campaign data to identify patterns in project success and failure. As a data analyst, I investigated which types of projects are most likely to succeed, which tend to fail, and the underlying factors contributing to campaign outcomes. The analysis uses SQL queries to clean, filter, and categorise data, providing actionable insights for decision-making.

## Objective

* Identify project characteristics that influence success or failure.
* Analyse projects based on backers, pledged amount, and fundraising goals.
* Apply conditional logic to classify campaigns as “Fully funded,” “Nearly funded,” or “Not nearly funded.”
* Provide insights that can guide the startup team in selecting promising Kickstarter campaigns for future launches.

## Key Questions Answered

1. **What types of projects are most likely to be successful?**
2. **Which projects fail and why?**
3. **What patterns in funding and backers indicate high risk?**

## SQL Techniques Used

* `PRAGMA table_info` to understand table schema.
* `SELECT` statements to extract relevant columns.
* `WHERE` clauses for filtering by category, state, and quantitative thresholds.
* `ORDER BY` for sorting results by category and funding ratios.
* `CASE` statements to apply conditional logic and categorise funding status.
* Aggregation and computation for percentages and derived metrics.

## Key Insights

* Many failed projects with significant backers still fail due to not reaching their funding goal.
* Projects with fewer backers but well-aligned goals can succeed if the pledged amount meets the target.
* Categorising projects by funding status highlights opportunities for intervention or campaign optimisation.

## File Structure

* `kickstarter_analysis.sql`: All SQL queries used for analysis, fully commented for clarity.
* `README.md`: Project overview, objectives, methods, and key insights.

## How to Use

1. Clone this repository.
2. Open `kickstarter_analysis.sql` in any SQL environment (SQLite recommended).
3. Execute queries sequentially to reproduce analysis and insights.

## Technologies

* SQLite
* SQL queries for data extraction, filtering, and conditional logic

#SQL #DataAnalysis #BusinessIntelligence #Kickstarter #DataDriven #Startup #ProjectPortfolio #SQLite #DataAnalyst
#SQL #DataAnalysis #Kickstarter #BusinessIntelligence`



