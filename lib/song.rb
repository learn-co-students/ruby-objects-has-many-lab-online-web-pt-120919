require'pry'
class Song
  attr_accessor :name , :artist 
  @@all = []
  def initialize(name)
    @name = name
    Song.all << self 
  end
  
  def artist
    @artist
  end
  
  def artist_name
    if @artist == nil 
     nil
    else
      artist.name 
    end
   # binding.pry
  end
  
  def self.all 
    @@all
  end
    
  
end