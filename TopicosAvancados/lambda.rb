# Exemplos de lambda

first_lambda = lambda { puts 'my first lambda'}
first_lambda.call

# outra maneira de escrever
# first_lambda = -> lambda { puts 'My first lambda'}

# também é possivel receber parâmetros

second_lambda = -> (names) {names.each { |name |puts name}}
names = ["Rickison" , "Renan", "Barto"]
second_lambda.call(names)