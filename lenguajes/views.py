from django.shortcuts import render
from .models import Lenguajes
# Create your views here.
def render_lenguajes(request):
    habilidades = Lenguajes.objects.all()
    return render(request, "index_lenguaje.html",{"habilidades":habilidades})