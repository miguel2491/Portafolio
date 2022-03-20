from django.db import models

# Create your models here.
class Lenguajes(models.Model):
    title = models.CharField(max_length=100)
    nivel = models.CharField(max_length=100)
    imagen = models.CharField(max_length=100)
    date = models.DateField()