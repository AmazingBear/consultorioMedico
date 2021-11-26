# Generated by Django 3.2.9 on 2021-11-26 11:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_paciente_senha'),
    ]

    operations = [
        migrations.CreateModel(
            name='Especializacao',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('especializacao', models.CharField(choices=[('C', 'Cardiologista'), ('P', 'Pediatra'), ('U', 'Urologista'), ('G', 'Geriatria'), ('O', 'Oftalmologia'), ('D', 'Dermatologia'), ('E', 'Emergência'), ('I', 'Infectologia')], max_length=1)),
            ],
        ),
        migrations.AlterField(
            model_name='medico',
            name='especializacao',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='home.especializacao'),
        ),
    ]