from django.shortcuts import render
from .models import Academico
# Create your views here.
def render_academico(request):
    academico = Academico.objects.all()
    return render(request, "index_academico.html", {'aca':academico})
