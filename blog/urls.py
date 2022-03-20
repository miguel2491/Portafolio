from django.urls import path
from .views import render_post, post_detai

app_name = "blog"

urlpatterns = [
    path('',render_post, name='posts'),
    path('<int:post_id>', post_detai, name="post_detail"),
]
