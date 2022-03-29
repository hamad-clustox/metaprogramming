# frozen_string_literal: true
# define generic methods
class Animal
  def perform(action)
    puts "#{action} is performed"
  end
end

dog = Animal.new
dog.perform('walk')
dog.perform('eat')

# define methods on the fly
class Animal
  %w[eat walk].each do |action|
    define_method(action) do
      puts "#{action} is performed"
    end
  end
end

dog = Animal.new
dog.send(:walk)

# -------------------------------------------------------------------------------------------------------

# Example 2 - set attr_accessors
# attr_accessors creates two methods dynamically getter and setter
class Book
  attr_accessor :title, :author, :pages, :rating

  def assign_values(book_info)
    book_info.each_key do |k, v|
      send("#{k}=", book_info[k])
    end
  end
end

book = Book.new
book_info = {
  title: 'Who move my cheese',
  author: 'unknown',
  pages: '75',
  rating: '5'
}

book.title = book_info[:title]
book.author = book_info[:author]
book.pages = book_info[:pages]
book.rating = book_info[:rating]

# book.assign_values(book_info)

puts book.inspect

# -------------------------------------------------------------------------------------------------------
# Bookafy Example Customer.rb
