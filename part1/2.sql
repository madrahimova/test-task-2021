# Составить запрос, который выводит информацию о количестве учащихся на данный
# момент студентов для каждого работающего преподавателя в разрезе курсов. 

select teacher.id, count(*) from student
inner join course on student.course_id = course.id
inner join group on student.group_id = group.id
inner join teacher on group.teacher_id = teacher.id
where student.status = 'Зачислен' and teacher.status = 'работает'
group by teacher.id;