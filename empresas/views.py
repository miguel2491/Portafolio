from django.shortcuts import render
from .models import Empresas
# Create your views here.
def render_empresas(request):
    empresa = Empresas.objects.all()
    return render(request, "index.html",{"empresas":empresa})