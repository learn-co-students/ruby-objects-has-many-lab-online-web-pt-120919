class Song
  
  @@all = []
  
  attr_accessor :name, :artist
  
  
  
  def initialize(name)
    @name = name
    @@all << self # pushes new instanves into a class variable called @@all upon #initialization
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
    self.artist.name
  else
    nil
  end
end
  
end

hello = Song.new("Hello")