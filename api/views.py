from rest_framework import viewsets
from .models import Planetas, Peliculas, Personajes, Especies
from .serializer import PlanetasSerializer, PersonajesSerializer, PeliculasSerializer, EspeciesSerializer

# Create your views here.
class PersonajesViewSet(viewsets.ModelViewSet):
    queryset = Personajes.objects.all()
    serializer_class = PersonajesSerializer

class PeliculasViewSet(viewsets.ModelViewSet):
    queryset = Peliculas.objects.all()
    serializer_class = PeliculasSerializer

class PlanetasViewSet(viewsets.ModelViewSet):
    queryset = Planetas.objects.all()
    serializer_class = PlanetasSerializer

class EspeciesViewSet(viewsets.ModelViewSet):
    queryset = Especies.objects.all()
    serializer_class = EspeciesSerializer

