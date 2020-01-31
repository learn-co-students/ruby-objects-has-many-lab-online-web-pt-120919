
#new is initialized with an argument of a title pushes new instances into a class
#    variable called @@all upon initialization


class Post
  attr_accessor :title, :author

  @@all = []        #@@all is a class variable set to an array


  def initialize(title)
    @title = title  #title has a title
    @author = nil   #author belongs to an author
    @@all << self
  end

  def self.all       #all s a class method that returns an array of all post instances that have been created
    @@all
  end


  def author_name     #author_name  knows the name of its author returns nil if the post does not have an author
    @author.name if @author
  end
end
