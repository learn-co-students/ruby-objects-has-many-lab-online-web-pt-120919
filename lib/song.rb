class Song
  attr_accessor :name, :artist

  @@all = []     #@@all is a class variable set to an array

  #new is initialized with an argument of a name  pushes new instances into a
  #class variable called @@all upon initialization



  def initialize(name)
    @name = name        # #name has a name
    @artist = nil       # #artist belongs to an artist
    @@all << self
  end


#.all is a class method that returns an array of all song instances that have been created

  def self.all
    @@all
  end


  #artist_name knows the name of its artist returns nil if the song does not have an artist

  def artist_name
    @artist.name if @artist
  end


end
