class Ship

  SHIPS = []
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = arg[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end
