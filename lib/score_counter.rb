class ScoreCounter
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def count
    return equal_points_result if equal_points?
		return winning_result if winner?
		normal_result
  end

  private

	def player_1
		@player_1
	end

	def player_2
		@player_2
	end

	def results
		['Love', 'Fifteen', 'Thirty', 'Forty']
	end

	def equal_points?
		player_1.points == player_2.points
	end

	def equal_points_result
		return results[player_1.points] + '-All' if player_1.points < 3
		'Deuce'
	end

	def winner?
		player_1.points >= 4 || player_2.points >= 4
	end

	def advance_player
		player_1.points > player_2.points ? player_1 : player_2
	end

	def advantage
		(player_1.points - player_2.points).abs
	end

	def winning_result
		return 'Advantage ' + advance_player.name if advantage < 2
		'Win for ' + advance_player.name
	end

  def normal_result
    results[player_1.points] + '-' + results[player_2.points]
  end
end
