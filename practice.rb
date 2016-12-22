class Pet
  attr_accessor :name, :age, :gender, :color
  def eat
    puts "Your pet is eating."
  end
end

class Cat < Pet
end

class Dog < Pet
  def bark
    puts "Woof"
  end
end

class Snake < Pet
  attr_accessor :length
end                                                                          

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
puts snake.length
puts snake.name
dog = Dog.new
dog.bark

1.upto(5){|i| puts i}

class Post
  attr_reader :title, :body, :comment
  def initialize(title, body, comment)
    @title = title
    @body = body
    @comment = comment
  end

  def average_word_length
    words = body.split
    words.inject(0) {|memo, word| memo += word.length} / words.count.to_f
  end

  def total_words
    words = [title, body, comment]
    words.join(" ").split.count
  end

end

post = Post.new("Yo playa", "Sup son, this post is dope", "Yeah man!")
p post.average_word_length
p post.total_words

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

puts fib(6)