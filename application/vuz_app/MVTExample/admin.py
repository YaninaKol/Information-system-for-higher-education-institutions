from django.contrib import admin
from django.http import HttpResponseRedirect
from django.template.defaulttags import url

from .models import Discipline, Facultie, Department, Teacher, Academic_load


class DisciplineAdmin(admin.ModelAdmin):
    search_fields = ('name',)

class FacultieAdmin(admin.ModelAdmin):
    search_fields = ('name',)


class DepartmentAdmin(admin.ModelAdmin):
    search_fields = ('name',)


class TeacherAdmin(admin.ModelAdmin):
    search_fields = ('first_name', 'last_name', 'department')


class Academic_loadAdmin(admin.ModelAdmin):
    search_fields = ('teacher', 'discipline', 'academic_year', 'term')


admin.site.register(Discipline, DisciplineAdmin)
admin.site.register(Facultie, FacultieAdmin)
admin.site.register(Department, DepartmentAdmin)
admin.site.register(Teacher, TeacherAdmin)
admin.site.register(Academic_load, Academic_loadAdmin)

