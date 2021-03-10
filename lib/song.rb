class Song
  @@all = []
  attr_accessor :name, :x, :y
  def initialize(name, x, y)
    @name = name
    @x = x 
    @y = y
    @@all << self
  end
end