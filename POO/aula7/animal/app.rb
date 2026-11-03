require './animal.rb'
require './cachorro.rb'
# require_relative './animal.rb' # também funciona, mas é mais usado para arquivos dentro do mesmo diretório

puts '--Animal--'
animal = Animal.new
animal.pular 

puts "\n--Cachorro--"
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
cachorro.dormir