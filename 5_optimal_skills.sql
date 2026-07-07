/*
Answer: What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill)?
– Identify skills in high demand and associated with high average salaries for Data Analyst roles
– Concentrates on remote positions with specified salaries
– Why? Targets skills that offer job security (high demand) and financial benefits (high salaries),
🔍 offering strategic insights for career development in data analysis
*/

with high_demand_skills as (
SELECT 
    cs.job_id,
    cs.skill_id, 
    sd.skills
FROM
    com_skill AS cs
INNER JOIN skill_dim AS sd 
ON cs.skill_id = sd.skill_id
)
SELECT 
    hds.skill_id,
    hds.skills,
    COUNT(*) AS demand_count,
    AVG(jf.salary_year_avg) AS salary_avg
FROM
    job_fact AS jf
INNER JOIN 
	high_demand_skills AS hds
	ON jf.job_id = hds.job_id
WHERE
    jf.salary_year_avg IS NOT NULL
	AND jf.job_work_from_home = TRUE
	AND jf.job_title_short = 'Data Analyst'
GROUP BY 
	hds.skill_id , 
	hds.skills
ORDER BY 
	demand_count DESC
LIMIT 5;

/*
results

0		sql		398		97237.161834
181		excel	256		87288.214102
1		python	236		101397.219958
182		tableau	230		99287.650000
5		r		148		100498.766284
*/