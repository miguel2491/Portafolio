from django.http import HttpResponse
from django.shortcuts import render
from .models import Proyect

# Create your views here.
def home(request):
    project = Proyect.objects.all()
    return render(request, "home.html",{"proyects":project})