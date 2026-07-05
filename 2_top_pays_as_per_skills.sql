/*Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
Why? It provides a detailed look at which high-paying jobs demand certain skills,
   helping job seekers understand which skills to develop that align with top salaries*/
   
WITH top_pays AS (
    SELECT 
        jf.job_id,
        cd.com_name AS company_name,
        jf.job_title_short,
        jf.job_country,
        jf.salary_year_avg
    FROM job_fact AS jf
    INNER JOIN company_dim AS cd
        ON jf.company_id = cd.company_id
    WHERE jf.job_title_short = 'Data Analyst'
      AND jf.salary_year_avg IS NOT NULL
      -- AND jf.job_country = 'India'
    ORDER BY jf.salary_year_avg DESC
    limit 100
)
SELECT 
    tp.*,
    sd.skills
FROM top_pays AS tp
INNER JOIN com_skill AS cs
    ON cs.job_id = tp.job_id
INNER JOIN skill_dim AS sd
    ON cs.skill_id = sd.skill_id
;
