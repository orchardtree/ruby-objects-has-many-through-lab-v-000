require 'pry'
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
    Song.all.select{|song| song.artist == self}
    #binding.pry
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
end