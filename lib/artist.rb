 require "song.rb"
class Artist
  
  @@song_count = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  
  def add_song(song) # adds songs to the empty @songs array primarily
    @songs << song # pushes the song arguement into the @songs empty array so I can have a              # list of songs
    song.artist = self # lets the song know it belongs to that artist
    @@song_count +=1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count +=1
  end
  
  def self.song_count
    @@song_count
  end
  
end

adele = Artist.new("Adele")
