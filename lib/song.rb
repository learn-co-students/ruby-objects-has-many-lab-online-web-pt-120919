class Song
  
  @@all = []
  
  attr_accessor :artist,:name
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
      return self.artist.name
    end
    nil
  end
  
end