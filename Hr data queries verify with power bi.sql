SELECT * FROM `shivam tyagi`.hrdata;

Select count(*) from hrdata; #1470

select sum(employee_count) from hrdata; #1470

select sum(employee_count) 
from hrdata 
where education='High School'; #170

select sum(employee_count) 
from hrdata 
where education='Associates degree'; #282


select sum(employee_count) 
from hrdata 
where education="Bachelor's degree"; #572

select sum(employee_count) 
from hrdata 
where education='Doctoral Degree'; #48


select sum(employee_count)
 from hrdata
 where education="Master's Degree"; #398
 
 
select sum(active_employee) from hrdata; #1233


select sum(employee_count)
 from hrdata 
 where department='Sales'; #446
 
 
select sum(employee_count) 
from hrdata 
where department='HR'; #63


select sum(employee_count) 
from hrdata
where department='R&D'; #961


select sum(employee_count) as Life_Sciences_student
from hrdata
where education_field ='Life Sciences'; #606


select sum(employee_count) as marketing_student
from hrdata 
where education_field ='Marketing'; #159


select sum(employee_count) as techanical_student
from hrdata 
where education_field ='Technical Degree';  #132


select sum(employee_count) as human_student 
from hrdata 
where education_field ='Human Resources'; #27


select sum(employee_count) as other_student 
from hrdata 
where education_field ='Other'; #82


select count(attrition) 
from hrdata 
where attrition='Yes'; #237


select count(attrition)
from hrdata 
where attrition='No'; #1233


select count(attrition) 
from hrdata 
where attrition='Yes' and education='Doctoral Degree'; #5


select count(attrition) 
from hrdata
where attrition='Yes' and education='High School'; #31


select count(attrition) 
from hrdata 
where attrition='Yes' and education="Bachelor's degree"; #99


select count(attrition) 
from hrdata 
where attrition='Yes' and education='Associates degree'; #44


select count(attrition) 
from hrdata 
where attrition='Yes' and education="Master's Degree"; #58


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' ; #133


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' and education_field='Medical'; #47


select count(attrition) 
from hrdata 
where attrition='No' and department='R&D' and education_field='Medical'; #316


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' and education_field='Life Sciences'; #59


select count(attrition) 
from hrdata 
where attrition='No' and department='R&D' and education_field='Life Sciences'; #381


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' and education_field='Technical Degree'; #20


select count(attrition) 
from hrdata 
where attrition='No' and department='R&D' and education_field='Technical Degree'; #74


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' and education_field='Marketing'; #0


select count(attrition) 
from hrdata 
where attrition='No' and department='R&D' and education_field='Marketing'; #0


select count(attrition) 
from hrdata 
where attrition='No' and department='R&D' and education_field='Human Resources'; #0


select count(attrition) 
from hrdata 
where attrition='Yes' and department='R&D' and education_field='Human Resources'; #0


select count(attrition) from hrdata
where attrition='Yes' and department='R&D' and education_field='Medical'
and education='High School'; #9


Select round(((select count(attrition) 
from hrdata 
where attrition='Yes')/sum(employee_count))*100,2) as attrition_rate 
from hrdata; #16.12


Select round(((select count(attrition) 
from hrdata 
where attrition='Yes' and  department= 'Sales' )/
sum(employee_count))*100,2) as attrition_rate 
from hrdata
where department= 'Sales'; #20.63


select sum(employee_count)-(select count(attrition) 
from hrdata 
where Attrition ='Yes') 
from hrdata; #1233


select sum(employee_count)-(select count(attrition) 
from hrdata 
where Attrition ='Yes' and gender='Male') 
from hrdata 
where gender='Male'; #732


Select  round(avg(age)) as Avg_age 
from hrdata #37


---------#attriton by gender------------------

select gender, count(attrition) 
from hrdata
where attrition='Yes'
group by gender 
order by count(attrition) desc; #F=87 #M= 150


select gender, count(attrition) 
from hrdata
where attrition='Yes' and education='High School'
group by gender 
order by count(attrition) desc;


 ---#attriton by Department--
 
select department,count(attrition) 
from hrdata
where attrition='Yes'
group by  department; #R&D=133,#SALES=92,#HR=12


select department,count(attrition) 
from hrdata
where attrition='Yes'
group by  department
order by count(attrition) desc; #R&D=133,#SALES=92,#HR=12


select department,count(attrition) 
,count(attrition)/(select count(attrition) 
from hrdata where attrition='Yes')
from hrdata
where attrition='Yes'
group by  department
order by count(attrition) desc;


select department,count(attrition) 
,(count(attrition)/(select count(attrition) 
from hrdata 
where attrition='Yes'))*100
from hrdata
where attrition='Yes'
group by  department
order by count(attrition) desc;


select department,count(attrition) 
,(count(attrition)/(select count(attrition) 
from hrdata 
where attrition='Yes' and gender='Female'))*100
from hrdata
where attrition='Yes'
group by  department
order by count(attrition) desc;


select age, sum(employee_count) 
from hrdata
where department='R&D'
group by age
order by age;


 ---#attriton by Education--
 
 
Select education_field, count(attrition) 
from hrdata
where attrition='Yes' and department='Sales'
group by education_field
order by count(attrition) desc;


Select age_band,gender, count(attrition),
(count(attrition)/(select count(attrition) 
from hrdata 
where attrition='Yes'))*100 as per_attrition
from hrdata
where attrition='Yes' 
group by age_band,gender
order by age_band, gender;

 
Select age_band, gender, sum(employee_count) 
from hrdata
group by age_band, gender
order by age_band, gender desc;
 
 
 
