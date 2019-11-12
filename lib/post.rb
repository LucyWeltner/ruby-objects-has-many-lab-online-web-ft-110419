class Post 
  attr_accessor :title, :author 
  def initialize(title)
    @title = title 
  end
  
  def author=(author)
    self.author = author 
    self.author.posts << self
    Author.post_count += 1 
  end
end
    