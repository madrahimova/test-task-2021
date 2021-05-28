# Составить запрос, который выводит количество отчисленных студентов в группах,
# стартовавших после начала 2021 года. 

select count(*) from student
inner join group on student.group_id = group.id
where group.date_of_start >= '20210101' and student.status = 'Отчислен';