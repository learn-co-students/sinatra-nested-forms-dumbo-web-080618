class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def self
    @@all
  end
  
  def intialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@ll << self
  end

end
