from django.db import models

# Create your models here.
class Frameworks(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    imagen = models.CharField(max_length=100)
    date = models.DateField()