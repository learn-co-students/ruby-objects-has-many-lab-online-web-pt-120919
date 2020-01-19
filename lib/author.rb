class Author 
  attr_accessor :name
  
  @@total_posts = 1
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  
  def add_post(post)
    post.author = self 
    @posts << post 
    @@total_posts += 1 
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @@total_posts += 1 
  end
  
  def self.post_count 
    @@total_posts 
  end
end