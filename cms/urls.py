from django.urls import path
from .views import render_cms

app_name = "cms"

urlpatterns = [
    path('',render_cms, name='cms'),
]