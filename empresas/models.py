from django.db import models

# Create your models here.
class Empresas(models.Model):
    title = models.CharField(max_length=100)
    actividades = models.TextField()
    ocupacion = models.CharField(max_length=100)
    image = models.ImageField(upload_to='empresas/images')
    
    finicio = models.DateField()
    ffinal = models.DateField()