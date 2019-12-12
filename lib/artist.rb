class Artist 
  
  def initialize(name)
    @name = name
  end 
  
  @@songs = []
  
  attr_accessor :name
  
  def songs
    @@songs 
  end
  
  def add_song(song_name)
    song_name.artist=(self) 
  end
  
  def add_song_by_name(song_name_str)
    song_name = Song.new(song_name_str) 
    song_name.artist = self 
  end
  
  def self.song_count 
    @@songs.length 
  end
  
end