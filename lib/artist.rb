require "pry"
class Artist
  attr_accessor :name, :song 
   @@song_count = 0
  def initialize(name)
    @name = name

  end
  
  
  def songs
    Song.all
     
  end
  
  
  def add_song(song)
    song.artist = self
    @@song_count += 1
    end
    
    
    def add_song_by_name(song)
      song = Song.new(song)
    self.songs << song
    song.artist = self
    @@song_count += 2
    end
    
    
  def self.song_count
  # binding.pry
    @@song_count
    
      
    end
    
    
    
end


























