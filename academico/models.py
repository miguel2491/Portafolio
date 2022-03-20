from django.db import models

# Create your models here.
class Academico(models.Model):
    title = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    lugar = models.CharField(max_length=100)
    logo = models.ImageField(upload_to='academico/images')
    finicio = models.DateField()