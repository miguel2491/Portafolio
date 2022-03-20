from django.shortcuts import render
from .models import Cms
# Create your views here.
def render_cms(request):
    cms = Cms.objects.all()
    return render(request, "index_cms.html",{"cms":cms})