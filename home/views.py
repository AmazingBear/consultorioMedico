from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
import conexao
from django.contrib.auth.models import User
from .models import *

__login = True

def index(request):
    dados = Consulta.objects.all()
    return render(request, 'home/index.html', {"dados": dados})


def login(request):
    return render(request, 'home/login.html')


def cadPaciente(request):
    if request.method == "POST":
        nome = request.POST.get('nome')
        cpf = request.POST.get('cpf')
        email = request.POST.get('email')
        telefone = request.POST.get('telefone')
        endereco = request.POST.get('endereco')
        senha = request.POST.get('senha')

        P = Paciente()
        P.nome = nome
        P.cpf = cpf
        P.email = email
        P.telefone = telefone
        P.endereco = endereco
        P.senha = senha

        P.save()
        return redirect('cadPaciente')

    return render(request, 'home/cadPaciente.html')


def cadMedico(request):
    dados = Especializacao.objects.all()
    if request.method == "POST":
        nome = request.POST.get('nome')
        especializacao = request.POST.get('especializacao')

        M = Medico()
        M.nome = nome
        M.especializacao = Especializacao.objects.get(id=especializacao)

        M.save()
        return redirect('cadMedico')

    return render(request, 'home/cadMedico.html', {"dados": dados})

def cadConsulta(request):
    dados = Paciente.objects.all()
    dados2 = Medico.objects.all()
    if request.method == "POST":
        paciente = request.POST.get('paciente')
        medico = request.POST.get('medico')
        datetime = request.POST.get('datetime')

        C = Consulta()
        C.paciente = Paciente.objects.get(id=paciente)
        C.medico = Medico.objects.get(id=medico)
        C.datetime = datetime

        C.save()
        return redirect('cadConsulta')

    return render(request, 'home/cadConsulta.html', {"dados": dados,"dados2": dados2})

def consultasAgendadas(request):
    dados = Consulta.objects.all()
    return render(request, 'home/consultasAgendadas.html', {"dados": dados})
