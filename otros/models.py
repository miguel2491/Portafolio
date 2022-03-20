from django.db import models
from django.forms import CharField, ImageField, URLField

# Create your models here.
class Otros(models.Model):
    title = CharField(max_length=100)
    description = CharField(max_length=250)
    image = CharField(max_length=100)
    