# Method missing
class Animal
  def method_missing(method, *args)
    return super(method, *args) unless method.to_s.include?('can')

    self.class.send(:define_method, method) do
      puts "#{method} created"
    end
    self.send(method, *args, &block)
  end

  def respond_to_missing?(method, *args)
    method.to_s.include?('can') || super
  end
end

dog = Animal.new
dog.can_speak
dog.respond_to? :can_speak