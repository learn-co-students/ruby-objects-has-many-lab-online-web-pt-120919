#new is initialized with a name
#name  has an attr_accessor for name

class Artist
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end


  #songs has many songs


  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  #add_song takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist

  def add_song(song)
    song.artist = self
  end

  #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end


  #  .song_count is a class method that returns the total number of songs associated to all existing artists


  def self.song_count
    count = 0

    @@all.each do |artist|
      count += artist.songs.size
    end
    count
  end
end
