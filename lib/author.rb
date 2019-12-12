class Author 
  
  def initialize(name)
    @name = name 
  end
  
  @@posts = []

  attr_accessor :name
  
  def posts
    @@posts 
  end
  
  def add_post(post_name)
    post_name.author = self 
  end 
  
  def add_post_by_title(post_title_str)
    post_title = Post.new(post_title_str)
    post_title.author = self 
  end
  
  def self.post_count
    @@posts.length 
  end
  
end