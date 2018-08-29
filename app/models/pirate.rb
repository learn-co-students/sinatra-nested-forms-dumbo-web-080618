class Pirate
  attr_reader :name, :weight, :height
  SAILORS = []
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    SAILORS << self
  end
  def self.all
    SAILORS
  end
end
