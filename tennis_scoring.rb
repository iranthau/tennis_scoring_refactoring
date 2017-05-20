require './lib/player.rb'
require './lib/score_counter.rb'

class TennisScoring
  def initialize(player1Name, player2Name)
    @player_1 = Player.new(player1Name)
    @player_2 = Player.new(player2Name)
  end

  def won_point(playerName)
    player = playerName == player_1.name ? player_1 : player_2
    player.score
  end

  def score
    score_counter = ScoreCounter.new(player_1, player_2)
    score_counter.count
  end

  private

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end
end
