class Song

  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name, artist = nil) #artist defaults to nil
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name   #if there's no artist will return nil
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end