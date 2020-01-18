class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name   #if there's no author will return nil
    if self.author
      self.author.name
    else
      nil
    end
  end

#  def author_name     Alternative method
#    author.name if author
#  end
end