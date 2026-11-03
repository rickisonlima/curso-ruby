# Exemplos de block

5.times { puts 'Exec the block'}

sum = 0
numbers = [5, 10, 15]
numbers.each {|number| sum += number}
puts sum

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key + value = #{key + value}"
    puts '----'
end

# recebendo um block com parâmetro

def foo 
    # call the block
    yield
    yield
end

foo do
    puts 'Exec the block'
    puts '1, 2, 3'
end

def foo(name, &block)
    @name = name
    block.call
end

foo('Rickison') {puts "Hello #{@name}"}