from django.urls import path
from .views import render_otros

app_name = "otros"

urlpatterns = [
    path('',render_otros, name='otros'),
]