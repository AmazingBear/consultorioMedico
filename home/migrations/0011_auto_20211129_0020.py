# Generated by Django 3.2.9 on 2021-11-29 03:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0010_alter_medico_especializacao'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='paciente',
            name='senha',
        ),
        migrations.AddField(
            model_name='medico',
            name='email',
            field=models.EmailField(max_length=254, null=True),
        ),
        migrations.AddField(
            model_name='medico',
            name='senha',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
