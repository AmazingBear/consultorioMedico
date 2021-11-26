from django.contrib import admin
from .models import Paciente, Consulta, Medico, Especializacao

@admin.register(Paciente)
class detEquipe(admin.ModelAdmin):
    list_display = ('nome','cpf','email','telefone','endereco',)

@admin.register(Especializacao)
class detServicos(admin.ModelAdmin):
    list_display = ('id','especializacao',)

@admin.register(Consulta)
class detCargo(admin.ModelAdmin):
    list_display = ('paciente','medico','diahorario',)

@admin.register(Medico)
class detServicos(admin.ModelAdmin):
    list_display = ('nome', 'especializacao', 'foto',)