class Author 
  attr_accessor :name, :post 
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all
  end
  
  def add_post(pos)
    @posts << pos 
    pos.author = self 
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    @posts << post
    title.author = self 
  end
  
  def self.post_count
    Post.all.count 
  end
  
  
  
end