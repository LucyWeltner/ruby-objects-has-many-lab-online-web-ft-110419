class Author 
  attr_accessor :name, :posts
  @@post_count = 0 
  
  def initialize(name)
    @name = name 
  end 
  
  def add_post(title)
    name = Post.new(title)
    name.author = self
  end
  
  def self.post_count=(number)
    @@post_count += number
  end
  
  def self.post_count 
    @@post_count
  end
end 