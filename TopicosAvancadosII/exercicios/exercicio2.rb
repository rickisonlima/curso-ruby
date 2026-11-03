# Em uma classe chamada Carro, crie um método público chamado get_km
# que recebe como parâmetro a seguinte informação "Um fusca amarelo
# viaja a 80km/h".
# 
# O método get_km deve chamar um método privado com o nome fin_km.
# Este deve localizar e retornar o casamento de padrão 80km/h.
# no final, imprima este retorno.
# 
class Carro 
    def get_km(texto)
        resultado = fin_km(texto)
        puts resultado
    end

    private 
    
    def fin_km(texto)
        texto[/\d+km\/h/]
    end
end

carro = Carro.new
carro.get_km('Um fusca amarelo viaja a 80km/h')