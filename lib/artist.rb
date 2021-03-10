class Artist 
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all <<  self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    songs.all.select{|song| song.artist == self}
  end
end