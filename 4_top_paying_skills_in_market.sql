/*
Question : What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve
*/

select
	cs.skill_id,
    sd.skills as skill_name,
    count(cs.skill_id) as skill_count,
    round(avg(jf.salary_year_avg),0) as salary_avg
from
	com_skill as cs
left join job_fact as jf
ON jf.job_id=cs.job_id
left join skill_dim as sd
ON sd.skill_id=cs.skill_id
where
	jf.salary_year_avg is not null AND
    jf.job_title_short='Data Analyst' AND
    jf.job_work_from_home=TRUE
GROUP BY
	cs.skill_id,
    sd.skills
ORDER BY salary_avg desc
limit 20;

#results
/*
skill_id  ,skills ,count, salary_avg
95		pyspark  	2	208172
218		bitbucket	2	189155
85		watson		1	160515
*/

