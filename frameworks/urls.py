from django.urls import path
from .views import render_frameworks

app_name = "frameworks"

urlpatterns = [
    path('',render_frameworks, name='frameworks'),
]