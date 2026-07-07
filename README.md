#📌 Project Overview

This project analyzes thousands of Data Analyst job postings using SQL to uncover salary trends, required technical skills, and the most valuable technologies in today's job market.

The analysis answers important career-related questions such as:

Which Data Analyst jobs offer the highest salaries?
Which companies pay the most?
What technical skills are required for those roles?
Which skills are most frequently requested by employers?
Which skills provide the highest average salary?

The project demonstrates practical SQL skills including joins, Common Table Expressions (CTEs), aggregation, filtering, sorting, and business-oriented data analysis.

# Technologies Used
SQL
MySQL
Joins
CTEs
GROUP BY
Aggregate Functions
ORDER BY
LIMIT
Business Data Analysis
Database Tables
Table	Description
job_fact	Job postings information
company_dim	Company details
skill_dim	Skill names
com_skill	Bridge table connecting jobs and skills
# Project Workflow
Understand Business Questions
        ↓
Explore Database
        ↓
Join Multiple Tables
        ↓
Write SQL Queries
        ↓
Analyze Salary Trends
        ↓
Analyze Required Skills
        ↓
Generate Business Insights
$ Query Sequence
1️⃣ Top Paying Data Analyst Jobs
Objective

Identify the highest-paying remote Data Analyst jobs with disclosed salaries.

SQL Concepts
RIGHT JOIN
Filtering
ORDER BY
LIMIT
Key Insight
High-paying Data Analyst roles are concentrated in remote positions.
Salary transparency helps identify premium opportunities.
Large organizations generally offer higher compensation packages.
2️⃣ Skills Required for Top Paying Jobs
Objective

Determine which technical skills employers expect for the highest-paying analyst positions.

SQL Concepts
CTE
INNER JOIN
Multiple Table Joins
Key Insight

Top-paying jobs commonly require combinations of:

SQL
Python
Tableau
Power BI
Cloud Technologies

These roles rarely depend on a single skill, highlighting the value of a well-rounded technical skill set.

3️⃣ Most In-Demand Skills
Objective

Find the skills most frequently requested across remote Data Analyst job postings.

SQL Concepts
CTE
GROUP BY
COUNT
ORDER BY
Results
Skill	Demand
SQL	85,337
Excel	62,420
Python	52,996
Tableau	42,809
Power BI	36,859
Insight

SQL remains the most essential technical skill for Data Analysts, followed by Excel and Python. Visualization tools like Tableau and Power BI are also consistently in high demand.

4️⃣ Highest Paying Skills
Objective

Analyze which technical skills are associated with the highest average salaries.

SQL Concepts
LEFT JOIN
AVG()
COUNT()
GROUP BY
Key Insight

Specialized skills such as PySpark, Bitbucket, and Watson command exceptionally high average salaries, although they appear in fewer job postings. This suggests a trade-off between demand and compensation—niche skills are less common but often more lucrative.
