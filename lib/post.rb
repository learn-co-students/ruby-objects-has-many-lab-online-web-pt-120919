class Post 
  
  def initialize(name)
    @title = name
    @@all << self     
  end

  @@all =[]

  attr_accessor :title  
  attr_reader :author
  
  def author= (writer)
    writer.posts << self 
    @author= writer 
  end 
  
  def self.all
    @@all
  end
  
  def author_name
    (self.author.nil?)? nil : self.author.name
  end
  
end