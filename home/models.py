from django.db import models
from django.utils import timezone

class Paciente(models.Model):
    nome = models.CharField(max_length=40)
    cpf = models.CharField(max_length=15)
    email = models.EmailField(null=True, blank=False)
    telefone = models.CharField(max_length=15)
    endereco = models.CharField(max_length=40)
    senha = models.CharField(max_length=50, null=True)

    def __str__(self):
        return self.nome

class Especializacao(models.Model):
    especializacao = models.CharField(max_length=40)

    def __str__(self):
        return str(self.especializacao)

class Medico(models.Model):
    nome = models.CharField(max_length=40)
    foto = models.ImageField(blank=True,upload_to='fotos/%y/%m/%d/')
    especializacao = models.ForeignKey(Especializacao, on_delete=models.DO_NOTHING)

    def __str__(self):
        return self.nome

class Consulta(models.Model):
    paciente = models.ForeignKey(Paciente,on_delete=models.DO_NOTHING)
    medico = models.ForeignKey(Medico,on_delete=models.DO_NOTHING)
    diahorario = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return str(self.id)
