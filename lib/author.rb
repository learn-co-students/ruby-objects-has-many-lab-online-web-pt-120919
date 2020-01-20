require "pry"
class Author 
  attr_accessor :name, :post 
   @@post_count = 0
  def initialize(name)
    @name = name
    @posts= []

  end
  
  
  def posts
    Post.all.select do |p|
      p.author == self
    end
     
  end
  
  
  def add_post(post)
    post.author = self
    @@post_count += 1
    end
    
    
    def add_post_by_title(post)
      post = Post.new(post)
    @posts << post
    post.author = self
    @@post_count += 2
    end
    
    
  def self.post_count
  # binding.pry
    @@post_count
    end
    
  # def author_name
  #   if self.author 
  #     self.author.name
  #   else
  #     nil 
  #   end 
    
  # end
    
    
end