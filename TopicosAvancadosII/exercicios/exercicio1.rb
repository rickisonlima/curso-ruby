# Crie uma expressão regular que faça o casamento de padrão
# com o número de telefone presente no texto a seguir
# "Olá, tudo bem? Meu whatsapp é (81) 99945-9431"
# 
texto = "Olá, tudo bem? Meu whatsapp é (81) 99945-9431"

regex = /\(\d{2}\) \d{5}-\d{4}/

puts texto[regex]