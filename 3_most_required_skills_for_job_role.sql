/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
  providing insights into the most valuable skills for job seekers.
*/

with skills_count_table as (
select
	jf.job_title_short,
	jf.job_work_from_home,
    cs.skill_id,
    count(*) as skill_count
from
	job_fact as jf
inner join com_skill as cs
ON jf.job_id=cs.job_id
where
	jf.job_title_Short='Data Analyst' AND
    jf.job_work_from_home='TRUE'
GROUP BY
	jf.job_title_short,
	jf.job_work_from_home,
    cs.skill_id
)
select
	sct.skill_id,
    sd.skills,
    sct.skill_count
from
	skills_count_table as sct
left join skill_dim as sd
ON sct.skill_id=sd.skill_id
ORDER BY
	sct.skill_count desc
limit 5;

# wtihout CTE

select
	cs.skill_id,
    sd.skills,
    count(jf.job_id) as skill_count
from
	job_fact as jf
inner join com_skill as cs
ON jf.job_id = cs.job_id
inner join skill_dim as sd
ON cs.skill_id = sd.skill_id
where
	jf.job_title_short='Data Analyst' AND
    jf.job_work_from_home='TRUE'
group by
	cs.skill_id,
	sd.skills
ORDER BY
	skill_count desc
limit 5;
    
