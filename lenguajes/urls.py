from django.urls import path
from .views import render_lenguajes

app_name = "lenguajes"

urlpatterns = [
    path('',render_lenguajes, name='lenguajes'),
]