# Crie um software que permita que o usuário entre com um texto, o indioma
# em que o texto está escrito e também o idioma para qual ele deseja traduzir
# o texto e receba como resposta na tela o texto traduzido
# 
# Critérios:
#   Tudo isto deve ser realizado dentro de uma classe.
#   O resultado de cada tradução (junto com a frase original), deve ser guardada
#   num arquivo que possua o nome a data e horário da tradução
#   
require 'net/http'
require 'json'
require 'uri'

class Tradutor
  API_URL = 'https://api.mymemory.translated.net/get'

  IDIOMAS = {
    'portugues' => 'pt', 'português' => 'pt',
    'ingles' => 'en',    'inglês' => 'en',
    'espanhol' => 'es',
    'frances' => 'fr',   'francês' => 'fr',
    'italiano' => 'it',
    'alemao' => 'de',    'alemão' => 'de'
  }

  def initialize(texto, idioma_origem, idioma_destino)
    @texto = texto
    @origem = codigo_do_idioma(idioma_origem)
    @destino = codigo_do_idioma(idioma_destino)
  end

  def executar
    traducao = traduzir
    puts "\nTexto traduzido: #{traducao}"
    arquivo = salvar(traducao)
    puts "Tradução salva em: #{arquivo}"
  rescue StandardError => e
    puts "\nNão foi possível traduzir: #{e.message}"
  end

  private

  def codigo_do_idioma(idioma)
    nome = idioma.strip.downcase
    IDIOMAS.fetch(nome, nome)
  end

  def traduzir
    uri = URI(API_URL)
    uri.query = URI.encode_www_form(q: @texto, langpair: "#{@origem}|#{@destino}")

    resposta = Net::HTTP.get_response(uri)
    dados = JSON.parse(resposta.body)

    unless dados['responseStatus'].to_i == 200
      raise dados['responseDetails'] || 'erro na API'
    end

    dados['responseData']['translatedText']
  end

  def salvar(traducao)
    agora = Time.now
    nome_arquivo = "traducao_#{agora.strftime('%d-%m-%Y_%H-%M-%S')}.txt"

    conteudo = <<~TEXTO
      Data: #{agora.strftime('%d/%m/%Y %H:%M:%S')}
      Idioma de origem: #{@origem}
      Idioma de destino: #{@destino}

      Texto original: #{@texto}
      Texto traduzido: #{traducao}
    TEXTO

    File.write(nome_arquivo, conteudo, encoding: 'UTF-8')
    nome_arquivo
  end
end

print 'Digite o texto: '
texto = gets.chomp

print 'Idioma do texto (ex: português ou pt): '
origem = gets.chomp

print 'Traduzir para (ex: inglês ou en): '
destino = gets.chomp

Tradutor.new(texto, origem, destino).executar