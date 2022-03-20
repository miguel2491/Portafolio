from django.urls import path
from .views import render_empresas

app_name = "empresas"

urlpatterns = [
    path('',render_empresas, name='empresas'),
]