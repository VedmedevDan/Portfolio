use kr;
Select name as "ФИО", course as "Курс", sex as "Пол", birthday_year as "год рождения", children as "Дети", scholarship as "Стипендия" from students 
where id_group=(select id_group from kr.group 
where kr.group.group ='КА-02' )
Union
SELECT '','','','','Итого: ', Count(name)  FROM students 
where id_group=(select id_group from kr.group 
where kr.group.group='КА-02');


-- Task 1 -------------------------------------------------------------------------------------------------------------------------------------------------


SELECT teacher.name as "ФИО", teacher.sex as "Пол", teacher.children as "Дети",
teacher.salary as "Зарплата", occupation.occupation as "Должность", dissertation.topic_science as "Тема", dissertation.year as "Год"
FROM teacher INNER JOIN
occupation ON teacher.id_occupation = occupation.id_occupation INNER JOIN
dissertation ON teacher.id_dissertation = dissertation.id_dissertation
WHERE (occupation.occupation = 'доцент');

SELECT count(teacher.name) as "Итого:"
FROM teacher INNER JOIN
faculty ON teacher.id_faculty = faculty.id_faculty
WHERE (faculty.name = 'ИПСА');

-- Task 2 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT dissertation.topic_science as "Научное направление", teacher.name as "ФИО", dissertation.rank as "Степень",
dissertation.year as "год", faculty.name as "Факультет"
FROM teacher INNER JOIN
dissertation ON teacher.id_dissertation = dissertation.id_dissertation INNER JOIN
faculty ON teacher.id_faculty = faculty.id_faculty
WHERE (faculty.name = 'ИПСА') AND (teacher.lectern = 'ММСА')
union
SELECT '','','','Итого: ',count(dissertation.topic_science)
FROM teacher INNER JOIN
dissertation ON teacher.id_dissertation = dissertation.id_dissertation INNER JOIN
faculty ON teacher.id_faculty = faculty.id_faculty
WHERE (faculty.name = 'ИПСА') AND (teacher.lectern = 'ММСА');

-- Task 3 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT DISTINCT plan.lectern as "Кафедра", plan.semester as "семестр", kr.group.group as "группа", discipline.name_discipline as "Предмет"
FROM plan INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline INNER JOIN
kr.group ON plan.id_group = kr.group.id_group
WHERE (plan.semester = 6) AND (kr.group.group = 'КА-85');

-- Task 4 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT DISTINCT teacher.name as "Преподаватель", plan.semester as "Семестр"
FROM teacher INNER JOIN
plan ON teacher.id_teacher = plan.id_teacher INNER JOIN
kr.group ON plan.id_group = kr.group.id_group INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline
WHERE (discipline.name_discipline = 'Функциональный анализ') AND (kr.group.group
= 'КА-02') AND (plan.semester = 2);
SELECT count(DISTINCT teacher.name)
FROM teacher INNER JOIN
plan ON teacher.id_teacher = plan.id_teacher INNER JOIN
kr.group ON plan.id_group = kr.group.id_group INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline
WHERE (discipline.name_discipline = 'БД') AND (kr.group.group = 'КА-85') AND
(plan.semester = 6);

-- Task 5 -------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW IF EXISTS query6;
CREATE VIEW query6 AS
(SELECT teacher.name as "Преподаватель",  kind_teach.kind_teach as "Вид занятий", kr.group.group as "группа",
plan.semester as "семестр"
FROM teacher INNER JOIN
plan ON teacher.id_teacher = plan.id_teacher INNER JOIN
kind_teach ON plan.id_kind_teach = kind_teach.id_kind_teach INNER JOIN
kr.group ON plan.id_group = kr.group.id_group
WHERE (kr.group.group = 'ДА-81') AND (kind_teach.kind_teach = 'лекция') AND
(plan.semester = 6));
SELECT * FROM query6;
SELECT COUNT(*) AS TOTAL FROM query6;

-- Task 6 -------------------------------------------------------------------------------------------------------------------------------------------------

DROP view IF EXISTS query7;
create view query7 as
(SELECT students.name as "Студент", kr.group.group as "группа",
discipline.name_discipline as "Дисциплина", achievement.mark as "оценка"
FROM students INNER JOIN
achievement ON students.id_student = achievement.id_student INNER JOIN
kr.group ON students.id_group = kr.group.id_group INNER JOIN
plan ON achievement.id_plan = plan.id_plan INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline
WHERE (discipline.name_discipline = 'БД') AND (achievement.mark = 4));
SELECT * FROM query7;
SELECT COUNT(*) AS "Итого" FROM query7;

-- Task 7 -------------------------------------------------------------------------------------------------------------------------------------------------

DROP VIEW IF EXISTS query8;
CREATE VIEW query8 AS
(SELECT students.name as "Студент", kr.group.group as "группа", plan.semester as "семестр"
FROM students INNER JOIN
kr.group ON students.id_group = kr.group.id_group INNER JOIN
achievement ON students.id_student = achievement.id_student INNER JOIN
plan ON kr.group.id_group = plan.id_group AND achievement.id_plan = plan.id_plan
WHERE (achievement.mark BETWEEN 4 AND 5) AND (plan.semester = 6) AND
(kr.group.group = 'КА-85'));
SELECT * from query8;
SELECT DISTINCT COUNT(*) AS "Итого" FROM query8;

-- Task 8 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT teacher.name as "Преподаватель", discipline.name_discipline as "Дисциплина", kr.group.group as "группа",
plan.semester as "семестр"
FROM teacher INNER JOIN
plan ON teacher.id_teacher = plan.id_teacher INNER JOIN
report ON plan.id_report = report.id_report INNER JOIN
kr.group ON plan.id_group = kr.group.id_group INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline
WHERE (discipline.name_discipline = 'Функциональный анализ') AND (kr.group.group = 'КА-85') AND
(plan.semester = 6) AND (report.kind = 'экзамен');

-- Task 9 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT students.name as "Студент", kr.group.group as "группа", plan.semester as "семестр"
FROM kr.group INNER JOIN
students ON (kr.group.id_group = students.id_group) INNER JOIN
plan ON kr.group.id_group = plan.id_group INNER JOIN
report ON plan.id_report = report.id_report INNER JOIN
teacher ON plan.id_teacher = teacher.id_teacher INNER JOIN
discipline ON plan.id_discipline = discipline.id_discipline
WHERE (teacher.name = 'Чаповский Ю.А.') AND (plan.semester BETWEEN 2 AND 6)
AND (kr.group.group = 'КА-85') AND (report.kind = 'экзамен');

-- Task 10 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT DISTINCT students.name as "Студент", diploma.topic as "Тема Диплома",
plan.lectern as "Кафедра"
FROM diploma INNER JOIN
students ON diploma.id_diploma = students.id_diploma INNER JOIN
achievement ON students.id_student = achievement.id_student INNER JOIN
plan ON achievement.id_plan = plan.id_plan
WHERE (plan.lectern = 'ММСА');

-- Task 11 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT teacher.name as "Руководитель диплома", diploma.topic as "Тема диплома",
faculty.name as "Факультет", students.name as "Студент"
FROM faculty INNER JOIN
students ON faculty.id_faculty = students.id_faculty INNER JOIN
diploma ON students.id_diploma = diploma.id_diploma INNER JOIN
teacher ON diploma.id_teacher = teacher.id_teacher
WHERE (faculty.name = 'ИПСА');

-- Task 12 -------------------------------------------------------------------------------------------------------------------------------------------------

SELECT DISTINCT teacher.name as "Преподаватель",
discipline.name_discipline as "Дисциплина", discipline.labaratory as "Лабораторные работы", discipline.practice as "Практические занятия", discipline.lecture as "Лекции",
discipline.seminar as "Семинары"
FROM discipline INNER JOIN
plan ON discipline.id_discipline = plan.id_discipline INNER JOIN
teacher ON plan.id_teacher = teacher.id_teacher INNER JOIN
kind_teach ON plan.id_kind_teach = kind_teach.id_kind_teach
WHERE (teacher.name = 'Чаповский Ю.А.')
GROUP BY teacher.name, discipline.name_discipline,
discipline.labaratory, discipline.practice, discipline.lecture, discipline.seminar;