class Song
  attr_accessor :name , :artist 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def artist
    @artist
  end
  
  def artist_name(artist)
    artist.name = artist
  end
  
  def self.all 
    @@all
  end
    
  
end