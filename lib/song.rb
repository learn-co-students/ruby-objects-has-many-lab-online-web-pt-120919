class Song
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  @@all=[]
  
  attr_accessor :name 
  attr_reader :artist 
  
  def artist= (artist)
    artist.songs << self 
    @artist  = artist 
  end 
  
  def self.all 
    @@all
  end 
  
  def artist_name
    self.artist.nil? ? nil : self.artist.name 
  end
  
end