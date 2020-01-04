class Post
  
  @@all = []
  
  attr_accessor :author,:title
  
  def initialize(message)
    @title = message
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      return self.author.name
    end
    nil
  end
  
end