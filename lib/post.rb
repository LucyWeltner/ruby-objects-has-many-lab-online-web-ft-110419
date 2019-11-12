class Post 
  attr_accessor :title
  attr_reader :author 
  def initialize(title)
    @title = title 
  end
  
  def author=(author1)
    self.author = author1 
    self.author.posts << self
    Author.post_count += 1 
  end
  
  def author_name
    if self.author 
      return self.author
    else 
      return nil 
    end 
  end
  
end
    