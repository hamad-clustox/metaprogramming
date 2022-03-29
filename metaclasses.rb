# Meta-classes
class Animal

  def speak
    puts 'hello'
  end

end

dog = Animal.new

cat = Animal.new

# Singleton Method

def dog.bark
  puts 'woof!'
end

dog.bark

# cat.bark

dog.speak
cat.speak

# Metaclass

class << dog
  def walk
    puts 'walking..'
  end
end

# Singleton Methods for a class as class is also an object - everything is object in ruby
# Since classes are objects in Ruby, and a class method is defined on a single instance of class,
# they can also be called as singleton methods of the class they are defined on.


def Animal.walks?
  true
end

class Animal
  def self.eats?
    true
  end
end

puts '*' * 200
puts Animal.singleton_class.instance_methods(false)

# From the above example it is clear that class methods are nothing but singleton methods of
# a class which are present inside the class's metaclass.
