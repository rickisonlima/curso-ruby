class Animal
    def pular
      puts 'Toing! tóim! bóing! póim!'
    end

    def dormir
        puts 'Zzzzz!'
    end
end

class Cachorro < Animal # recebendo como herança a classe Animal
    def latir
        puts 'Au au!'
    end
end

class Gato < Animal # recebendo como herança a classe Animal
    def miar
        puts 'Miau!'
    end
end

cachorro = Cachorro.new # criação do objeto cachorro
cachorro.pular
cachorro.dormir
cachorro.latir

gato = Gato.new # criação do objeto gato
gato.pular
gato.dormir
gato.miar