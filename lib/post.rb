class Post 
  @@all = []
  attr_accessor :author, :title
  def initialize(title)
    @title = title
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def author
    @author
  end
  
  def author_name
    if @author
      author.name 
    else
      nil 
    end
    
  end
  
  
  
end