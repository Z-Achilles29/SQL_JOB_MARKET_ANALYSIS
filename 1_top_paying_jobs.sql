/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into emp
*/
use sql_tutorial_data;

SELECT 
    job_id,
    job_title_short,
    cd.company_id,
    cd.com_name,
    job_location,
    job_work_from_home,
    job_schedule_type,
    job_country,
    salary_year_avg
FROM
    job_fact
right join company_dim as cd
ON job_fact.company_id=cd.company_id
WHERE
    job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = 'TRUE'
        #and job_country='India' if searching within INDIA
ORDER BY salary_year_avg DESC
LIMIT 10;



