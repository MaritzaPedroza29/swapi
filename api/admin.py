from django.contrib import admin
from .models import Especies, Peliculas, Personajes, Planetas

# Register your models here.
admin.site.register(Especies)
admin.site.register(Peliculas)
admin.site.register(Personajes)
admin.site.register(Planetas)