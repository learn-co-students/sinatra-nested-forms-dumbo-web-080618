
class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def self.all
    @@all
  end

  def initialize (name, weight, height)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.clear
    self.all.clear
  end
end
