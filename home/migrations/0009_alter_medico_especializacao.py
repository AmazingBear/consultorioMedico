# Generated by Django 3.2.9 on 2021-11-26 12:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0008_alter_especializacao_especializacao'),
    ]

    operations = [
        migrations.AlterField(
            model_name='medico',
            name='especializacao',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.especializacao'),
        ),
    ]
