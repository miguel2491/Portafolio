from django.shortcuts import render
from .models import Otros
# Create your views here.
def render_otros(request):
    project = Otros.objects.all()
    return render(request, "index_otros.html",{"extras":project})