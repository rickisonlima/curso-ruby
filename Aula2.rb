# Conceitos basicos de Ruby
=begin
    Aula 2 - Conceitos basicos de Ruby
    Tipagem dinâmica
    array = ['1', '2', '3']
    array = [1, 2, 3]
    same_symbol = :same_symbol (cria simbolos, se for mais de uma, vai para a mesma referencia de memoria)
    same_symbol = :same_symbol
    same_symbol.object_id == same_symbol.object_id (true)
    hash = { :key => 'value' } (hash antigo)
    hash = { key: 'value' } (hash novo) 
    chama como se fosse apelido de metodo, mas é um hash

    operadores de matematica
    + - * / % ** (potenciação)

    input e output
    puts 'Hello World' (imprime e quebra linha)
    input = gets.chomp (recebe input do usuario e remove a quebra de linha)
      Exemplos: 
        print "Digite seu nome: "
        nome = gets.chomp
        puts "Hello #{nome}" (imprime o nome do usuario)

      print "Digite o primeiro numero: "
      num1 = gets.chomp.to_i (converte para inteiro)
      print "Digite o segundo numero: "
      num2 = gets.chomp.to_i
      puts "A soma dos números é: #{num1 + num2}" (imprime a soma dos numeros)

=end

# Crie um programa que recebe o nome e a idade da pessoa e depois printa numa unica frase.
print "Digite seu nome: "
nome = gets.chomp
print "Digite sua idade: "
idade = gets.chomp.to_i
puts "Olá #{nome}, você tem #{idade} anos."

# Crie um programa que recebe dois números e printa a soma, subtração, multiplicação e divisão dos números.
print "Digite o primeiro numero: "
num1 = gets.chomp.to_i
print "Digite o segundo numero: "
num2 = gets.chomp.to_i
puts "A soma dos números é: #{num1 + num2}"
puts "A subtração dos números é: #{num1 - num2}"
puts "A multiplicação dos números é: #{num1 * num2}"

num1 = num1.to_f #.to_f converte para float
num2 = num2.to_f
puts "A divisão dos números é: #{num1 / num2}"

# Acessando array
array = ['1', '2', '3']
puts array[0] # imprime o primeiro elemento do array

array = [1, 2, 3]
puts array[1] # imprime o segundo elemento do array