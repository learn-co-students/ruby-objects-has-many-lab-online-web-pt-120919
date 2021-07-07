class Author
  attr_accessor :name

  @@all = []


  def initialize(name)   #   #new is initialized with a name
    @name = name         #   #name has an attr_accessor for name
    @@all << self
  end

  def posts                    # #post has many post
    Post.all.select do |post|
      post.author == self
    end
  end


  def add_post(post)           # #add_post  takes in an argument of a post and
    post.author = self         # associates that post with the author by telling the post that it belongs to that author
  end


  def add_post_by_title(post)  # #add_post_by_title takes in an argument of a post
    post = Post.new(post)      # title, creates a new post with it and associates the post and author
    add_post(post)
  end


  def self.post_count          # #artist_name knows the name of its artist
    count = 0                  # returns nil if the song does not have an artist

    @@all.each do |author|
      count += author.posts.size
    end
    count
  end
end
