require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.nome = 'Notebook'
produto.preco = 3500

mercado = Mercado.new(produto)
mercado.comprar