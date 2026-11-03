# O que é proc em ruby 
# e a diferença entre ele e o lambda
# 
# Um Proc é um bloco de código guardado em um objeto,
#  que você pode salvar em variável, passar como argumento e executar depois com .call.
#  A lambda é um tipo especial de Proc 
#  
# A lambda é rígida: se você passar a quantidade errada de argumentos, dá erro.
# O Proc é flexível: ignora o que sobra e preenche o que falta com nil.
# 
l = ->(a, b) { puts "#{a} e #{b}" }
l.call(1)          # ArgumentError (esperava 2, recebeu 1)

p = Proc.new { |a, b| puts "#{a} e #{b}" }
p.call(1)          # => "1 e "   (b vira nil)
p.call(1, 2, 3)    # => "1 e 2"  (o 3 é ignorado)

# Na lambda, return sai só da própria lambda, como em um método normal.
# No Proc, return sai do método inteiro onde ele foi chamado.
#
def testa_lambda
  l = -> { return 1 }
  l.call
  puts 'continuou'    # esta linha executa
end

def testa_proc
  p = Proc.new { return 1 }
  p.call
  puts 'continuou'    # esta linha NUNCA executa
end

testa_lambda   # imprime "continuou"
testa_proc     # não imprime nada