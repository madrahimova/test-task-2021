# Составить запрос, который выводит сводную информацию по студенту: id, crm_id,
# first_name, last_name, age, gender, group_title, course_title по имеющемуся
# crm_id=‘12345678’. То есть нам известен id в системе CRM, который был присвоен
# студенту в момент его зачисления на последний курс, в котором он сейчас проходит
# обучение. Нам же нужна информация о том, в каких группах студент учился ранее.
# Нужно учитывать, что в момент зачисления на новый курс id и crm_id поменялись,
# остались неизменными только имя и фамилия. 

select student.id, student.crm_id, student.first_name, student.last_name, student.age, student.gender,
group.title as group_title, course.title as course_title from (
    select * from student
    where student.crm_id = '12345678'
) as last_student
inner join student on last_student.first_name = student.first_name and last_student.last_name = student.last_name
inner join course on student.course_id = course.id
inner join group on student.group_id = group.id;
