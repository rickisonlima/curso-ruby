# Estruturas de Controle
# if/else/Elsif
# Unless (Quando for falso, executa o bloco de código)
# Case
# 
# For/ while/ times/ Do-While (loop)
# 

=begin
  product_status = "closed"

  unless product_status == 'open'
      check_chance = "can"
  else
      check_chance = "can't"
  end

  puts "You #{check_chance} chance the product"

 Uma variação do unless é o if not, que é mais legível e fácil de entender.
  

  puts "Usando o case"
  print "Digite o mês do seu aniversário (1-12): "
  month = gets.chomp.to_i

  case month
  when 1..3
    puts "Você nasceu no primeiro trimestre do ano."
  when 4..6
    puts "Você nasceu no segundo trimestre do ano."
  when 7..9
    puts "Você nasceu no terceiro trimestre do ano."
  when 10..12
    puts "Você nasceu no quarto trimestre do ano."
  else
    puts "Mês inválido. Por favor, digite um número entre 1 e 12."
  end


puts ("Usando as estruturas de repetição")

fruits = ['maça', 'uva', 'banana', 'laranja']

for fruit in fruits
  puts fruit
end

 puts "-------------------"

 x = 1

 while x <= 10
     puts x
     x += 1
 end

 puts "-------------------"

 cont = 1

 loop do
     puts cont
     cont += 1
      break if cont > 10
 end

  puts "-------------------"

  10.times do
      puts "Hello World" 
  end
=end

puts '-------------------'
puts '  CALCULADORA  '
puts '--------------------'

loop do
  print 'Digite o primeiro número: '  
  num1 = gets.chomp.to_f

  print 'Digite o operador\n
        + 
        - 
        *
        /
        0 para sair: '
  operador = gets.chomp 
  if operador == '0'
    exit
  end

  print 'Digite o segundo número: '
  num2 = gets.chomp.to_f

  case operador
  when '+'
    resultado = num1 + num2
    puts "O resultado da operação é: #{resultado}"
    break
  when '-'
    resultado = num1 - num2
    puts "O resultado da operação é: #{resultado}"
    break
  when '*'
    resultado = num1 * num2
    puts "O resultado da operação é: #{resultado}"
    break
  when '/'
    if num2 != 0
      resultado = num1 / num2
      puts "O resultado da operação é: #{resultado}"
      break
    else
      puts "Erro: Divisão por zero não é permitida."
      exit
    end
  end
end