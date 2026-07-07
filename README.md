# 📊 SQL Data Analyst Job Market Analysis

## 📌 Project Overview

This project analyzes real-world **Data Analyst job postings** using SQL to identify salary trends, in-demand skills, and the technologies that provide the highest earning potential.

The objective is to answer important business questions that can help aspiring Data Analysts understand the current job market and make informed learning decisions.

---

## 🎯 Business Questions

This project answers the following questions:

1. Which Data Analyst jobs offer the highest salaries?
2. What skills are required for those high-paying jobs?
3. Which skills are most in demand?
4. Which skills offer the highest average salaries?
5. Which skills provide the best balance between demand and salary?

---

## 🛠️ Technologies Used

- SQL
- PostgreSQL / MySQL
- Joins
- Common Table Expressions (CTEs)
- Aggregate Functions
- GROUP BY
- ORDER BY
- Filtering
- Business Data Analysis

---

## 🗂️ Database Tables

| Table | Description |
|--------|-------------|
| job_postings_fact | Job posting details |
| company_dim | Company information |
| skills_dim | List of technical skills |
| skills_job_dim | Bridge table connecting jobs and skills |

---

# 📂 Project Structure

```
SQL-Data-Analyst-Job-Market-Analysis/
│
├── README.md
│
├── Queries/
│   ├── 01_top_paying_jobs.sql
│   ├── 02_top_paying_job_skills.sql
│   ├── 03_most_in_demand_skills.sql
│   ├── 04_highest_paying_skills.sql
│   └── 05_optimal_skills.sql
│
├── Results/
│   ├── query1.png
│   ├── query2.png
│   ├── query3.png
│   ├── query4.png
│   └── query5.png
│
└── ER_Diagram.png
```

---

# 📈 Project Analysis

## 1️⃣ Top Paying Data Analyst Jobs

### Objective

Identify the highest-paying remote Data Analyst positions with publicly available salaries.

### SQL Skills Used

- RIGHT JOIN
- Filtering
- ORDER BY
- LIMIT

### Business Insight

- Remote Data Analyst positions can offer exceptionally high salaries.
- Companies with salary transparency make it easier to identify premium opportunities.
- High-paying roles are generally concentrated within larger organizations.

---

## 2️⃣ Skills Required for Top Paying Jobs

### Objective

Determine which technical skills employers expect for the highest-paying Data Analyst roles.

### SQL Skills Used

- CTE
- INNER JOIN
- Multiple Table Joins

### Business Insight

The highest-paying roles commonly require:

- SQL
- Python
- Tableau
- Power BI
- Cloud Technologies

These positions value a combination of analytical, programming, and visualization skills.

---

## 3️⃣ Most In-Demand Skills

### Objective

Identify the skills requested most frequently by employers hiring Data Analysts.

### SQL Skills Used

- GROUP BY
- COUNT()
- ORDER BY
- CTE

### Business Insight

SQL remains the most requested technical skill, followed by Excel, Python, Tableau, and Power BI.

These technologies form the core skillset expected from modern Data Analysts.

---

## 4️⃣ Highest Paying Skills

### Objective

Find which individual skills command the highest average salaries.

### SQL Skills Used

- AVG()
- GROUP BY
- LEFT JOIN
- ORDER BY

### Business Insight

Specialized technologies such as cloud platforms and big data tools generally command higher salaries than commonly used tools because of their advanced expertise requirements.

---

## 5️⃣ Optimal Skills (High Demand + High Salary)

### Objective

Identify the best skills to learn by combining market demand with salary potential.

### SQL Skills Used

- CTEs
- Aggregate Functions
- Multiple Joins
- Filtering
- ORDER BY

### Business Insight

The most valuable skills are those that are both highly demanded and highly paid.

Rather than learning only niche technologies or only popular tools, professionals should prioritize skills that maximize both employability and earning potential.

---

# 💡 Key Insights

- SQL is the foundation of almost every Data Analyst role.
- Python significantly improves salary potential.
- Excel continues to be widely used in business environments.
- Tableau and Power BI remain leading visualization tools.
- Specialized technologies often command premium salaries.
- Remote jobs continue to provide competitive compensation.
- Learning skills that are both in demand and high paying provides the strongest long-term career advantage.

---

# 🎯 Skills Demonstrated

- SQL Query Writing
- Data Exploration
- Data Analysis
- Table Joins
- Common Table Expressions (CTEs)
- Aggregate Functions
- Business Problem Solving
- Salary Trend Analysis
- Market Research
- Data-Driven Decision Making

---

# 🚀 Future Improvements

- Build an interactive Power BI dashboard using the query results.
- Perform trend analysis across different countries.
- Compare salaries by company, industry, and experience level.
- Create visualizations for easier business interpretation.

---

# 👨‍💻 Author

**Siddhesh Salvi**

Aspiring Data Analyst passionate about transforming raw data into meaningful business insights using SQL, Excel, Power BI, and Python.

Feel free to explore the project and share your feedback!
