# frozen_string_literal: true
# Macros in Rails
class User
  has_many :comments
end


class User
  puts "Inside the user class"

  def self.class_method
    puts "Inside class method"
  end

  puts "After class method declaration"

  self .class_method
end

# Hence every piece of code inside a class definition is executed while defining the class.
class User

  def self.has_many(association_name)
    define_method(association_name) do
      puts "association #{association_name} created"
    end
  end

  has_many :comments
end

user = User.new
user.comments

