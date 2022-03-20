from distutils.command.upload import upload
from tkinter import image_names
from turtle import title
from django.db import models
from django.db.models.fields import CharField
from django.db.models.fields.files import ImageField
from django.db.models.fields import URLField
# Create your models here.
class Proyect(models.Model):
    title = CharField(max_length=100)
    description = CharField(max_length=250)
    image = ImageField(upload_to='portfolio/images/')
    url = URLField(blank=True)

