# Generated by Django 4.2.7 on 2023-11-14 16:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_remove_personajes_peliculas_alter_personajes_especie'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='especies',
            name='personajes',
        ),
    ]
