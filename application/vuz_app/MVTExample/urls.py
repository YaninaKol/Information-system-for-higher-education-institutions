from django.urls import path

from MVTExample.views import home, academic_load, db, import_from_db, export_to_db

urlpatterns =[
    path('', home),
    path('academic_load/', academic_load),
    path('db/', db),
    path('dbi/', import_from_db),
    path('dbe/', export_to_db),
]