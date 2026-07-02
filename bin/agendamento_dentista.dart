abstract class Agendamento {
  void calcularDuracaoConsulta();
  void verificarDisponibilidade();
}



class Dentista implements Agendamento {
  
  @override
  void calcularDuracaoConsulta() {
    print("duraçao de 55 minutos");
    // Implementação do cálculo da duração da consulta para dentista
  }
  
  @override
  void verificarDisponibilidade() {
    print("Verificando disponibilidade do dentista, considerando intervos de 15 minutos");
    // Implementação da verificação de disponibilidade para dentista
  }
}
class  Medico implements Agendamento {
  
  @override
  void calcularDuracaoConsulta() {
    print("duraçao de 60 minutos");
    // Implementação do cálculo da duração da consulta para médico
  }
  
  @override
  void verificarDisponibilidade() {
    print("Verificando disponibilidade do médico, considerando intervos de 10 minutos");
    // Implementação da verificação de disponibilidade para médico
  }
 }

class GerenciadorDeAgendamento {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }
  void exibirDuracaoEdisponibilidade(){
    for (Agendamento profissional in profissionais){
      profissional.calcularDuracaoConsulta();
      profissional.verificarDisponibilidade();
    }
  }
}
 
 void main(){
  Medico medico = Medico();
  Dentista dentista = Dentista();
  GerenciadorDeAgendamento gerenciador = GerenciadorDeAgendamento();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);
  gerenciador.exibirDuracaoEdisponibilidade();
 }
 
 