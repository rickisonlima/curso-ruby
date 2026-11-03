=begin
  Parte dois da aula de programação orientada a objetos (POO)

  Required também permite carregar arquivos externos, como bibliotecas ou módulos, para serem usados no programa.

  Escopo das variáveis: é o contexto em que uma variável é definida e acessível.
   Em Ruby, as variáveis podem ter escopo local, global, de instância ou de classe.
   local: é uma variável definida dentro de um método ou bloco e só pode ser acessada dentro desse contexto.

   global: é uma variável definida fora de qualquer método ou bloco e pode ser acessada em qualquer lugar do programa.
    declaração de uma variável global é feita com o prefixo $.

   instância: é uma variável definida dentro de uma classe e pode ser acessada por todos os métodos da instância dessa classe.
    declaração de uma variável de instância é feita com o prefixo @.

   variavel de classe: é uma variável definida dentro de uma classe e pode ser acessada por todos os métodos da classe, 
    mas não pelas instâncias da classe.
    declaração de uma variável de classe é feita com o prefixo @@.

    atributos são sempre privados e começam com um @, eles só podem ser alterados pelo métodos de um objeto
    
    Em Ruby, o attr_accessor é um atalho macro que gera automaticamente métodos de leitura (getter) e escrita (setter)
     para as variáveis de instância de uma classe.

  Construtores é usado com o initialize
  
=end