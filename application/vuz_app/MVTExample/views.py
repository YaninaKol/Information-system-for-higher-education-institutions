from django.shortcuts import render
from django.http import HttpResponse, HttpResponseNotFound
from .models import Discipline, Facultie, Department, Teacher, Academic_load
import os
import codecs

def home(request):
    return render(request, 'MVTExample/index.html')

def academic_load(request):
    return render_academic_load(request)

def render_academic_load(request):
    if request.GET.get('teacher_name'):
        first_name, last_name = request.GET.get('teacher_name').split(' ')
        teachers = Teacher.objects.all()
        need_teacher = Teacher.objects.filter(first_name=first_name, last_name=last_name)[0]
        if need_teacher:
            academic = Academic_load.objects.filter(teacher=need_teacher)
        return render(request, 'MVTExample/academic_load.html', {'teachers': teachers, 'academic': academic})
    else:
        teachers = Teacher.objects.all()
        academic = Academic_load.objects.all()
        return render(request, 'MVTExample/academic_load.html', {'teachers': teachers, 'academic': academic})

def db(request):
    if request.user.id == 1:
        return render(request, 'MVTExample/db.html')
    else:
        return render(request, 'MVTExample/index.html')

def import_from_db(request):
    if request.user.id == 1:
        if start_import_from_db():
            return render(request, 'MVTExample/db.html', {'db_import': "Успешно"})
        else:
            return render(request, 'MVTExample/db.html', {'db_import': "Ошибка"})
    else:
        return render(request, 'MVTExample/index.html')

def export_to_db(request):
    if request.user.id == 1:
        if start_export_to_db():
            return render(request, 'MVTExample/db.html', {'db_export': "Успешно"})
        else:
            return render(request, 'MVTExample/db.html', {'db_export': "Ошибка"})
    else:
        return render(request, 'MVTExample/index.html')

def start_import_from_db():
    path = os.path.abspath(os.curdir)
    need_path = path.replace('vuz_app', 'venv\\Scripts')
    try:
        os.system(need_path+'\\dbi.bat')
        json_path = path+'\\db.json'
        f = open(json_path, 'r', encoding='utf-8')
        u = f.read()
        f.close()
        out = open(json_path, 'w', encoding='utf-8')
        out.write(u)
        return True
    except Exception as e:
        return False

def start_export_to_db():
    path = os.path.abspath(os.curdir)
    need_path = path.replace('vuz_app', 'venv\\Scripts')
    try:
        os.system(need_path + '\\dbe.bat')
        return True
    except Exception as e:
        return False