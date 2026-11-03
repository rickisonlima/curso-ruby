=begin 

  Collections

  Array

  estados = []
  push adciona elementos no final do array
  estados.push("Pernambuco")
  estados.push("Paraiba")
  print estados

  insert insere elementos em uma posição especifica do array
  estados.insert(0, "Rio Grande do Norte")
  print estados

  pop remove o último elemento do array
  estados.pop
  print estados

  shift remove o primeiro elemento do array
  estados.shift
  print estados

  delete remove um elemento específico do array
  estados.delete("Paraiba")
  print estados

  para acessar um elemento do array, basta informar o índice do elemento desejado 

  .first, .last, .length, .count, .empty?, .include?

  Hash
  
  capitais = {}
  capitais = {Pernambuco: 'Recife', 
  Paraiba: 'João Pessoa', 
  :'Rio Grande do Norte' => 'Natal'
  }

  puts capitais[:'Rio Grande do Norte']

  puts capitais[:Pernambuco]

  inserção
  capitais[:'Ceará'] = 'Fortaleza'

  .values, .keys, .size, .has_key?, .has_value?

  remoção
  capitais.delete(:'Ceará')


  Each serve para percorrer os elementos de uma coleção, seja ela um array ou um hash.

  Each - Array
  
  names = ["João", "Maria", "José"]
  name = 'Rickison

  names.each do |name|
    puts name
  end

  puts name

  Eah - Hash
  aulas = {Aula1: 'Introdução', Aula2: 'Variáveis', Aula3: 'Tipos de Dados'}
  
  aulas.each do |key, value|
    puts "#{key} #{value}"
  end

  map serve para percorrer os elementos de uma coleção, seja ela um array ou um hash,
  e retornar uma nova coleção com os elementos modificados.

  map - Array

  array = [1, 2, 3, 4, 5]
  puts "\nmultiplicando por 2"

  new_array = array.map do |number|
    number * 2
  end

  puts "\n array original"
  print array

  puts "\n novo array"
  print new_array

  também pode ser utilizado para modificar os elementos de um array, sem a necessidade de criar um novo array.
  usando o map! ao invés do map, o array original será modificado.

  map! - Array

  array = [1, 2, 3, 4, 5]
  puts "\nmultiplicando por 2"

  array.map! do |number|
    number * 2
  end

  puts "\n array original"
  print array


  Select serve para percorrer os elementos de uma coleção, seja ela um array ou um hash,
  e retornar uma nova coleção com os elementos que atendem a uma determinada condição.

  array = [1, 2, 3, 4, 5]
  puts "\nselecionando os números pares"

  pares = array.select do |number|
    number.even?
  end

  print pares

  hash = {Aula1: 'Introdução', Aula2: 'Variáveis', Aula3: 'Tipos de Dados'}
  puts "\nselecionando as aulas com conteúdo sobre variáveis"

  variaveis = hash.select do |key, value|
    value.include?('Variáveis')
  end

  print variaveis

=end

puts '--------------------'
puts 'Exercícios'
puts '--------------------'

# Utilizando uma collection do tipo array, escreva um programa que receba 3
# números e no final exiba o resultado de cada um deles elevado a segunda potência.

print 'Digite 3 números: '
valores = gets.chomp.split(' ').map(&:to_i)

resultados = valores.map do |valor|
    valor ** 2
end

print resultados

# Crie uma collection do tipo hash e permita que o usuário crie três elementos
# informando a chave e o valor. No final do programa para cada um desses elementos
# imprima a frase "Uma das chaves é *** e o seu valor é ***".

# nome e idade

pessoas = {}

3.times do
    print 'Digite o nome da pessoa: '
    nome = gets.chomp
    print 'Digite a idade da pessoa: '
    idade = gets.chomp.to_i
    pessoas[nome] = idade
end

pessoas.each do |nome, idade|
    puts "\nUma das chaves é #{nome} e o seu valor é #{idade}"
end


# Dado o seguinte hash
# Numbers = {A : 10, B : 30, C : 20, D : 25, E : 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final
# imprima a chave e valor do elemento resultante.

numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

maior_valor = numbers.max_by { |chave, valor| valor }

puts "\nO maior valor é #{maior_valor[1]} e a sua chave é #{maior_valor[0]}"