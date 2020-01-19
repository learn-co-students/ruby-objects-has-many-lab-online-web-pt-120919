class Artist  
  attr_accessor :name 

  @@total_songs = 1
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
    self.songs << song
    @@total_songs += 1
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    @@total_songs += 1
  end
  
  def self.song_count 
    @@total_songs
  end
end