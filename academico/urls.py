from django.urls import path
from .views import render_academico

app_name = "academico"

urlpatterns = [
    path('',render_academico, name='academico'),
]
