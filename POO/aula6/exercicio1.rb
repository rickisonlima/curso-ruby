# Crie um programa seguindo o seguinte paradigma com
# 
# Cria as classes
#   Esportista 
#     Métodos: competir -> imprime a mensagem "Participando de uma competição"
#   JogadorDeFutebol
#     Métodos: correr -> imprime a mensagem "Correndo atrás da bola"
#   Maratonista
#     Métodos: correr -> imprime a mensagem "Correndo uma maratona"
# 
# As classes JogadorDeFutebol E Maratonista devem herdar da classe Esportista.
# No final do programa execute os métodos competir E correr EM objetos do tipo
# JogadorDeFutebol E Maratonista.
#

class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Correndo uma maratona'
    end
end

jogador = JogadorDeFutebol.new
maratonista = Maratonista.new

puts "Jogador de Futebol:"
jogador.competir
jogador.correr

puts "\nMaratonista:"
maratonista.competir
maratonista.correr