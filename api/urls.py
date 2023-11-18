from django.urls import path,include
from  rest_framework import routers
from api import views

router = routers.DefaultRouter()
router.register(r'personajes', views.PersonajesViewSet)
router.register(r'peliculas', views.PeliculasViewSet)
router.register(r'planetas', views.PlanetasViewSet)
router.register(r'especies', views.EspeciesViewSet)

urlpatterns = [
    path('', include(router.urls))
]