# polimorfismo
# subescrevendo o método escrever da classe Instrumentos

class Instrumentos
    def escrever
        puts 'Escrevendo...'
    end
end

class Teclado < Instrumentos
end

class Lapis < Instrumentos
    def escrever
        puts 'Escrevendo com lápis...'
    end
end

class Caneta < Instrumentos
    def escrever
        puts 'Escrevendo com caneta...'
    end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "Lapis:"
lapis.escrever
puts "Caneta:"
caneta.escrever
puts "Teclado:"
teclado.escrever