from django.shortcuts import render
from .models import Frameworks
# Create your views here.
def render_frameworks(request):
    frames = Frameworks.objects.all()
    return render(request, "index_frame.html", {"frames":frames})