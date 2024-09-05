-- 1,2분기 평균 + select시 점수에 따른 등급 표시 + 성과금곱하기

select e.emp_no,
        e.emp_name,
        case
            when avg(score)>=96 then 'S'
            when avg(score)>=90 and avg(score)<96 then 'A'
            when avg(score)>=80 and avg(score)<90 then 'B'
            else 'C'
        end as grade,
        case
            when avg(score)>=96 then sal*0.2
            when avg(score)>=90 and avg(score)<96 then sal*0.15
            when avg(score)>=80 and avg(score)<90 then sal*0.1
            else 0
        end as bonus
from hr_employees e join hr_grade g on e.emp_no=g.emp_no
group by emp_no
order by e.emp_no
