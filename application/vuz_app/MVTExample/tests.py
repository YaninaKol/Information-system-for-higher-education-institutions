from django.test import TestCase
from .models import Discipline, Facultie, Department, Teacher, Academic_load

class DisciplineModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        Discipline.objects.create(name="Дисциплина", hours=10, cycle="Цикл дисциплин")

    def test_name_label(self):
        discipline = Discipline.objects.get(id=2)
        name = discipline._meta.get_field('name').verbose_name
        self.assertEquals(name, 'Название')

    def test_name(self):
        discipline = Discipline.objects.get(id=2)
        name = discipline.name
        self.assertEquals(name, 'Дисциплина')

    def test_hours_label(self):
        discipline = Discipline.objects.get(id=2)
        hours = discipline._meta.get_field('hours').verbose_name
        self.assertEquals(hours, 'Длительность, ч')

    def test_hours(self):
        discipline = Discipline.objects.get(id=2)
        hours = discipline.hours
        self.assertEquals(hours, 10)

    def test_cycle_label(self):
        discipline = Discipline.objects.get(id=2)
        cycle = discipline._meta.get_field('cycle').verbose_name
        self.assertEquals(cycle, 'Цикл дисциплин')

    def test_cycle(self):
        discipline = Discipline.objects.get(id=2)
        cycle = discipline.cycle
        self.assertEquals(cycle, "Цикл дисциплин")

class FacultieModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        f = Facultie.objects.create(name="Факультет", dean_name="Иванов И.И.", room_number="1", corp_number="1", phone="88005553535")

    def test_name_label(self):
        facultie = Facultie.objects.get(id=3)
        name = facultie._meta.get_field('name').verbose_name
        self.assertEquals(name, 'Название')

    def test_name(self):
        facultie = Facultie.objects.get(id=3)
        name = facultie.name
        self.assertEquals(name, 'Факультет')

    def test_dean_name_label(self):
        facultie = Facultie.objects.get(id=3)
        dean_name = facultie._meta.get_field('dean_name').verbose_name
        self.assertEquals(dean_name, 'Декан')

    def test_dean_name(self):
        facultie = Facultie.objects.get(id=3)
        dean_name = facultie.dean_name
        self.assertEquals(dean_name, 'Иванов И.И.')

    def test_room_number_label(self):
        facultie = Facultie.objects.get(id=3)
        room_number = facultie._meta.get_field('room_number').verbose_name
        self.assertEquals(room_number, 'Номер комнаты')

    def test_room_number_name(self):
        facultie = Facultie.objects.get(id=3)
        room_number = facultie.room_number
        self.assertEquals(room_number, '1')

    def test_corp_number_label(self):
        facultie = Facultie.objects.get(id=3)
        corp_number = facultie._meta.get_field('corp_number').verbose_name
        self.assertEquals(corp_number, 'Номер корпуса')

    def test_corp_number_name(self):
        facultie = Facultie.objects.get(id=3)
        corp_number = facultie.corp_number
        self.assertEquals(corp_number, '1')

    def test_phone_label(self):
        facultie = Facultie.objects.get(id=3)
        phone = facultie._meta.get_field('phone').verbose_name
        self.assertEquals(phone, 'Номер телефона')

    def test_phone_name(self):
        facultie = Facultie.objects.get(id=3)
        phone = facultie.phone
        self.assertEquals(phone, '88005553535')

class DepartmentModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        f = Facultie.objects.create(name="Факультет", dean_name="Иванов И.И.", room_number="1", corp_number="1", phone="88005553535")
        Department.objects.create(name="Кафедра", head_name="Иванов И.И.", room_number="1", corp_number="1",
                                  phone="88005553535", teachers_count=10, facultie=f)

    def test_name_label(self):
        department = Department.objects.get(id=2)
        name = department._meta.get_field('name').verbose_name
        self.assertEquals(name, 'Название')

    def test_name(self):
        department = Department.objects.get(id=2)
        name = department.name
        self.assertEquals(name, 'Кафедра')

    def test_head_name_label(self):
        department = Department.objects.get(id=2)
        head_name = department._meta.get_field('head_name').verbose_name
        self.assertEquals(head_name, 'Имя главы')

    def test_head_name(self):
        department = Department.objects.get(id=2)
        head_name = department.head_name
        self.assertEquals(head_name, 'Иванов И.И.')

    def test_room_number_label(self):
        department = Department.objects.get(id=2)
        room_number = department._meta.get_field('room_number').verbose_name
        self.assertEquals(room_number, 'Номер комнаты')

    def test_room_number(self):
        department = Department.objects.get(id=2)
        room_number = department.room_number
        self.assertEquals(room_number, '1')

    def test_corp_number_label(self):
        department = Department.objects.get(id=2)
        corp_number = department._meta.get_field('corp_number').verbose_name
        self.assertEquals(corp_number, 'Номер корпуса')

    def test_corp_number(self):
        department = Department.objects.get(id=2)
        corp_number = department.corp_number
        self.assertEquals(corp_number, '1')

    def test_phone_label(self):
        department = Department.objects.get(id=2)
        phone = department._meta.get_field('phone').verbose_name
        self.assertEquals(phone, 'Номер телефона')

    def test_phone(self):
        department = Department.objects.get(id=2)
        phone = department.phone
        self.assertEquals(phone, '88005553535')

    def test_phone_label(self):
        department = Department.objects.get(id=2)
        teachers_count = department._meta.get_field('teachers_count').verbose_name
        self.assertEquals(teachers_count, 'Количество преподавателей')

    def test_phone(self):
        department = Department.objects.get(id=2)
        teachers_count = department.teachers_count
        self.assertEquals(teachers_count, 10)

    def test_facultie_label(self):
        department = Department.objects.get(id=2)
        f = department._meta.get_field('facultie').verbose_name
        self.assertEquals(f, "Факультет")

    def test_facultie(self):
        department = Department.objects.get(id=2)
        facultie = Facultie.objects.get(id=2)
        f = department.facultie
        self.assertEquals(f, facultie)


class TeacherModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        f = Facultie.objects.create(name="Факультет", dean_name="Иванов И.И.", room_number="1", corp_number="1", phone="88005553535")
        d = Department.objects.create(name="Кафедра", head_name="Иванов И.И.", room_number="1", corp_number="1",
                                  phone="88005553535", teachers_count=10, facultie=f)
        Teacher.objects.create(first_name="Иван", last_name="Иванов", patronymic="Иванович", department=d,
                                birth=1980, admission_to_work=2010, experience=11, post="Преподаватель",
                               sex="Мужской", city="Архангельск")

    def test_first_name_label(self):
        teacher = Teacher.objects.get(id=2)
        first_name = teacher._meta.get_field('first_name').verbose_name
        self.assertEquals(first_name, 'Имя')

    def test_first_name(self):
        teacher = Teacher.objects.get(id=2)
        first_name = teacher.first_name
        self.assertEquals(first_name, 'Иван')

    def test_last_name_label(self):
        teacher = Teacher.objects.get(id=2)
        last_name = teacher._meta.get_field('last_name').verbose_name
        self.assertEquals(last_name, 'Фамилия')

    def test_last_name(self):
        teacher = Teacher.objects.get(id=2)
        last_name = teacher.last_name
        self.assertEquals(last_name, 'Иванов')

    def test_patronymic_label(self):
        teacher = Teacher.objects.get(id=2)
        patronymic = teacher._meta.get_field('patronymic').verbose_name
        self.assertEquals(patronymic, 'Отчество')

    def test_patronymic(self):
        teacher = Teacher.objects.get(id=2)
        patronymic = teacher.patronymic
        self.assertEquals(patronymic, 'Иванович')

    def test_department_label(self):
        teacher = Teacher.objects.get(id=2)
        department = teacher._meta.get_field('department').verbose_name
        self.assertEquals(department, 'Кафедра')

    def test_department(self):
        teacher = Teacher.objects.get(id=2)
        d = Department.objects.get(id=3)
        department = teacher.department
        self.assertEquals(department, d)

    def test_birth_label(self):
        teacher = Teacher.objects.get(id=2)
        birth = teacher._meta.get_field('birth').verbose_name
        self.assertEquals(birth, 'Год рождения')

    def test_birth(self):
        teacher = Teacher.objects.get(id=2)
        birth = teacher.birth
        self.assertEquals(birth, 1980)

    def test_admission_to_work_label(self):
        teacher = Teacher.objects.get(id=2)
        admission_to_work = teacher._meta.get_field('admission_to_work').verbose_name
        self.assertEquals(admission_to_work, 'Год притяния на работу')

    def test_admission_to_work(self):
        teacher = Teacher.objects.get(id=2)
        admission_to_work = teacher.admission_to_work
        self.assertEquals(admission_to_work, 2010)

    def test_experience_label(self):
        teacher = Teacher.objects.get(id=2)
        experience = teacher._meta.get_field('experience').verbose_name
        self.assertEquals(experience, 'Стаж')

    def test_experience(self):
        teacher = Teacher.objects.get(id=2)
        experience = teacher.experience
        self.assertEquals(experience, 11)

    def test_post_label(self):
        teacher = Teacher.objects.get(id=2)
        post = teacher._meta.get_field('post').verbose_name
        self.assertEquals(post, 'Должность')

    def test_post(self):
        teacher = Teacher.objects.get(id=2)
        post = teacher.post
        self.assertEquals(post, "Преподаватель")

    def test_sex_label(self):
        teacher = Teacher.objects.get(id=2)
        sex = teacher._meta.get_field('sex').verbose_name
        self.assertEquals(sex, 'Пол')

    def test_sex(self):
        teacher = Teacher.objects.get(id=2)
        sex = teacher.sex
        self.assertEquals(sex, "Мужской")

    def test_city_label(self):
        teacher = Teacher.objects.get(id=2)
        city = teacher._meta.get_field('city').verbose_name
        self.assertEquals(city, 'Город')

    def test_city(self):
        teacher = Teacher.objects.get(id=2)
        city = teacher.city
        self.assertEquals(city, "Архангельск")


class Academic_loadModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        f = Facultie.objects.create(name="Факультет", dean_name="Иванов И.И.", room_number="1", corp_number="1", phone="88005553535")
        d = Department.objects.create(name="Кафедра", head_name="Иванов И.И.", room_number="1", corp_number="1",
                                  phone="88005553535", teachers_count=10, facultie=f)
        t = Teacher.objects.create(first_name="Иван", last_name="Иванов", patronymic="Иванович", department=d,
                                birth=1980, admission_to_work=2010, experience=11, post="Преподаватель",
                               sex="Мужской", city="Архангельск")
        di = Discipline.objects.create(name="Дисциплина", hours=10, cycle="Цикл дисциплин")
        Academic_load.objects.create(teacher=t, discipline=di, academic_year="2021/2022", term="1",
                                     groups="23,24,25", students_count=100, exams_type="Экзамен")


    def test_teacher_label(self):
        academic_load = Academic_load.objects.get(id=1)
        teacher = academic_load._meta.get_field('teacher').verbose_name
        self.assertEquals(teacher, 'Преподаватель')

    def test_teacher(self):
        academic_load = Academic_load.objects.get(id=1)
        t = Teacher.objects.get(id=1)
        teacher = academic_load.teacher
        self.assertEquals(teacher, t)

    def test_discipline_label(self):
        academic_load = Academic_load.objects.get(id=1)
        discipline = academic_load._meta.get_field('discipline').verbose_name
        self.assertEquals(discipline, 'Дисциплина')

    def test_discipline(self):
        academic_load = Academic_load.objects.get(id=1)
        d = Discipline.objects.get(id=1)
        discipline = academic_load.discipline
        self.assertEquals(discipline, d)

    def test_academic_year_label(self):
        academic_load = Academic_load.objects.get(id=1)
        academic_year = academic_load._meta.get_field('academic_year').verbose_name
        self.assertEquals(academic_year, 'Академический год')

    def test_academic_year(self):
        academic_load = Academic_load.objects.get(id=1)
        academic_year = academic_load.academic_year
        self.assertEquals(academic_year, "2021/2022")

    def test_term_label(self):
        academic_load = Academic_load.objects.get(id=1)
        term = academic_load._meta.get_field('term').verbose_name
        self.assertEquals(term, 'Семестр')

    def test_term(self):
        academic_load = Academic_load.objects.get(id=1)
        term = academic_load.term
        self.assertEquals(term, 1)

    def test_groups_label(self):
        academic_load = Academic_load.objects.get(id=1)
        groups = academic_load._meta.get_field('groups').verbose_name
        self.assertEquals(groups, 'Группы')

    def test_groups(self):
        academic_load = Academic_load.objects.get(id=1)
        groups = academic_load.groups
        self.assertEquals(groups, "23,24,25")

    def test_students_count_label(self):
        academic_load = Academic_load.objects.get(id=1)
        students_count = academic_load._meta.get_field('students_count').verbose_name
        self.assertEquals(students_count, 'Количество студентов')

    def test_students_count(self):
        academic_load = Academic_load.objects.get(id=1)
        students_count = academic_load.students_count
        self.assertEquals(students_count, 100)

    def test_exams_type_label(self):
        academic_load = Academic_load.objects.get(id=1)
        exams_type = academic_load._meta.get_field('exams_type').verbose_name
        self.assertEquals(exams_type, 'Вид итогового контроля')

    def test_exams_type(self):
        academic_load = Academic_load.objects.get(id=1)
        exams_type = academic_load.exams_type
        self.assertEquals(exams_type, "Экзамен")





