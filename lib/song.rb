class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if !@artist
      return nil
    else
      return self.artist.name
    end
  end

end


# summer_game.artist_name => drake
