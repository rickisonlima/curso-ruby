=begin

  Regex = Expressões regulares.
    Usado muito para validar entrada de dados ou fazer busca e extração de informações de texto
    Criação: 
      /expressão/
      %r{expressão}
      regexp.new('expressão') #criando objetos
    Regex há metodos, pois é uma classe
    Ao usar, é incentivado buscar na sua documentação todos os métodos e funcionalidades.

  Time = Reprensetar datas e horas
    É uma classe, portanto há métodos
    time.metódo
    Vale a pena conhercer a sua documentação para aprender suas funcionalidades

  Method Missing = utilizado para interceptar chamadas a métodos que não existem
  
  Self = é uma variável epecial que aponta para o objeto atual.
    Self pode ser a própria instância
      Se for o caso, usando o self eu consigo acessar variávels de
      instâncias daquela classe.

  Métodos private e Métodos Protected
    Private = só o próprio objeto chama, e sem receptor (sem nada antes do ponto).
    Protected = o próprio objeto chama, e também outros objetos da mesma classe podem chamar. Mas de fora da classe, não.

=end