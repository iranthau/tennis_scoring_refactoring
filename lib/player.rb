class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 0
  end

  def score
    @points += 1
  end
end
