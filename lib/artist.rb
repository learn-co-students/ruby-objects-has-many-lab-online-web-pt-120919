class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  # Takes argument of a Song class, defines artist attribute
  def add_song(song)
    song.artist = self
  end 
  
  # Finds songs by artist in the @@all array of songs
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  # Creates a Song instance, sets artist attribute
  def add_song_by_name(song)
    Song.new(song).artist = self
  end
  
  # Returns total number of songs instances in Song class
  def self.song_count
    Song.all.count
  end 
  
end 