class Song 
  attr_accessor :name, :artist
  
  # Holds all instances of a song
  @@all = []
  
  # Creates song instance, stores in @@all
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  # Displays all song instances 
  def self.all
    @@all 
  end 
  
  # If song has been assigned an artist, return artist name
  def artist_name
    self.artist ? self.artist.name : nil
  end 
  
end 
  
  