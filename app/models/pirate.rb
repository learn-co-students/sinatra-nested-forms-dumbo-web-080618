class Pirate

  PIRATES = []
  def initialize(args)
    @name = args[:name]
    @height = args[:height]
    @weight = arg[:weight]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end  

end
