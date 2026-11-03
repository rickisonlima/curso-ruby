=begin
  Métodos e Gems
 
  Métodos são funções que podem ser aplicadas a um objeto, seja ele um array, hash, string, etc.

  def hello name
    puts "Hello #{name}"
  end

  hello 'Rickison'

  def talk(first_name, last_name)
    puts "Hello #{first_name} #{last_name}"
  end

  talk('Rickison', 'Lima')

  return é uma palavra reservada que serve para retornar um valor de um método.
  Caso não seja utilizado, o Ruby irá retornar o último valor avaliado do método.

    def compare (a, b)
      return a > b
    end

    a = 10
    b = 5

    result = compare(a, b)
    puts result

    gems são bibliotecas de código que podem ser utilizadas para adicionar funcionalidades ao Ruby.
    para instalar uma gem, é necessário utilizar o comando gem install nome_da_gem no terminal.

    gem install os

    require 'os'

    def my_os
      if OS.windows?
        puts "Windows"
      elsif OS.linux?
        puts "Linux"
      elsif OS.mac?
        puts "Mac"
      else
        puts "Unknown"
      end
    end

    print "meu sistema operacional é: "
    my_os

    gem uninstall os
    gem list serve para listar as gems instaladas no sistema.

    bundle é uma ferramenta que serve para gerenciar as gems de um projeto Ruby.
    Ele permite instalar, atualizar e remover gems de forma simples e eficiente.
    exemplo de utilização do bundle:

    bundle init
    bundle install
    bundle update
    bundle exec ruby nome_do_arquivo.rb

=end


puts '-------------'
puts 'Exercicio'
puts '-------------'

# Crie um programa que possua um método que resolva a
# potência dado um número e um expoente, estes dois valores
# devem ser informados pelo usuário.

def power(number, exponent)
    return number ** exponent
end

print 'Digite um número: '
number = gets.chomp.to_f
print 'Digite o expoente: '
exponent = gets.chomp.to_f

result = power(number, exponent)
printf "O resultado da potência é: %.2f",result

# Siga a documentação da gem cpf_cnpj para criar um
# programa que recebe como entrada um número de CPF e em um
# método verifica se o CPF é válido ou não. 
# 
# gem install cpf_cnpj
# require 'cpf_cnpj'
#
# def validate_cpf(cpf)
#     if CPF.valid?(cpf)
#         puts "O CPF #{cpf} é válido."
#     else
#         puts "O CPF #{cpf} é inválido."
#     end
# end
# 
# print 'Digite um número de CPF: '
# cpf = gets.chomp
# 
# validate_cpf(cpf)
# 