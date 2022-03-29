# Send Method
class Animal
  def walk(name)
    puts "#{name} is walking"
  end
end

dog = Animal.new
dog.send(:walk, 'Snow white')
