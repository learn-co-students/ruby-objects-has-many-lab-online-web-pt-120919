class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end 
  
  # Takes argument of a Post class, defines author attribute
  def add_post(post)
    post.author = self
  end 
  
  # Finds posts by author in the @@all array of posts
  def posts
    Post.all.select {|post| post.author == self}
  end 
  
  # Creates a post instance, sets author attribute
  def add_post_by_title(post)
    Post.new(post).author = self
  end
  
  # Returns total number of post instances in Post class
  def self.post_count
    Post.all.count
  end 
  
end 