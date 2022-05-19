from django.db import models

# Create your models here.


class Discipline(models.Model):
    name = models.CharField(max_length=45, verbose_name="Название")
    hours = models.IntegerField(verbose_name="Длительность, ч")
    cycle = models.CharField(max_length=45, verbose_name="Цикл дисциплин")
    verbose_name = "Дисциплина"

    def __str__(self):
        return self.name


class Facultie(models.Model):
    name = models.CharField(max_length=45, verbose_name="Название")
    dean_name = models.CharField(max_length=45, verbose_name="Декан")
    room_number = models.IntegerField(max_length=10, verbose_name="Номер комнаты")
    corp_number = models.IntegerField(max_length=10, verbose_name="Номер корпуса")
    phone = models.IntegerField(max_length=15, verbose_name="Номер телефона")

    def __str__(self):
        return self.name


class Department(models.Model):
    name = models.CharField(max_length=45, verbose_name="Название")
    head_name = models.CharField(max_length=45, verbose_name="Имя главы")
    room_number = models.IntegerField(max_length=10, verbose_name="Номер комнаты")
    corp_number = models.IntegerField(max_length=10, verbose_name="Номер корпуса")
    phone = models.IntegerField(max_length=15, verbose_name="Номер телефона")
    teachers_count = models.IntegerField(verbose_name="Количество преподавателей")
    facultie = models.ForeignKey('Facultie', on_delete=models.CASCADE, verbose_name="Факультет")

    def __str__(self):
        return self.name


class Teacher(models.Model):
    first_name = models.CharField(max_length=45, verbose_name="Имя")
    last_name = models.CharField(max_length=45, verbose_name="Фамилия")
    patronymic = models.CharField(max_length=45, verbose_name="Отчество")
    department = models.ForeignKey('Department', on_delete=models.CASCADE, verbose_name="Кафедра")
    birth = models.IntegerField(verbose_name="Год рождения")
    admission_to_work = models.IntegerField(verbose_name="Год притяния на работу")
    experience = models.IntegerField(verbose_name="Стаж")
    post = models.CharField(max_length=45, verbose_name="Должность")
    sex = models.CharField(max_length=10, verbose_name="Пол")
    city = models.CharField(max_length=45, verbose_name="Город")

    def __str__(self):
        return self.first_name + " " + self.last_name


class Academic_load(models.Model):
    teacher = models.ForeignKey('Teacher', on_delete=models.CASCADE, verbose_name="Преподаватель")
    discipline = models.ForeignKey('Discipline', on_delete=models.CASCADE, verbose_name="Дисциплина")
    academic_year = models.CharField(max_length=45, verbose_name="Академический год")
    term = models.IntegerField(verbose_name="Семестр")
    groups = models.CharField(max_length=45, verbose_name="Группы")
    students_count = models.IntegerField(verbose_name="Количество студентов")
    exams_type = models.CharField(max_length=45, verbose_name="Вид итогового контроля")

    def __str__(self):
        return self.teacher.first_name + " " + self.teacher.last_name

