 require "post.rb"
class Author
  
  @@post_count = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  
  def add_post(posts) 
    @posts << posts
    posts.author = self 
    @@post_count +=1
  end
  
  def add_post_by_title(name)
    posts = Post.new(name)
    add_post(posts)
    @@post_count +=1
  end
  
  def posts
    Post.all.select {|posts| posts.author == self}
  end
  
  
  def self.post_count
    @@post_count
  end
  
end


