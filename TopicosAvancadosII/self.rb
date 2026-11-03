# Pratica de self

class Foo 
    def bar 
        puts self
    end
end

foo = Foo.new
puts foo
foo.bar

puts '-------------------------'

class Foo1
    def self.bar
        puts self
    end
end

Foo1.bar

puts '-------------------------'

class Pen 
    attr_accessor :color
    def pen_color
            puts "The color is " + self.color
    end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color