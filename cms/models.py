from django.db import models

# Create your models here.
class Cms(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    imagen = models.CharField(max_length=100)
    date = models.DateField()