class Post 
  attr_accessor :title, :author 
  
  # Holds all instances of posts
  @@all = []
  
  # Creates post instance, stores in @@all
  def initialize(title)
    @title = title 
    @@all << self 
  end 

  # Displays all posts instances
  def self.all
    @@all 
  end 
  
  # If post has been assigned an author, return author name
  def author_name
    self.author ? self.author.name : nil
  end 
  
end 