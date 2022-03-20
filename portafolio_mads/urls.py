
from unicodedata import name
from django.conf import settings
from django.contrib import admin
from django.conf.urls.static import static
from django.urls import path, include
from portfolio import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('academico/', include('academico.urls')),
    path('empresas/',include('empresas.urls')),
    path('lenguajes/',include('lenguajes.urls')),
    path('frameworks/',include('frameworks.urls')),
    path('cms/',include('cms.urls')),
    path('blog/',include('blog.urls')),
    path('otros/',include('otros.urls')),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
