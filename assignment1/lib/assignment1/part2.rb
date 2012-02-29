class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each{ |p| raise NoSuchStrategyError unless p[1].match(/[PRSprs]/) }
  return  score_bout(game[0], game[1])
end

def rps_tournament_winner(tournament)
 if tournament[0][0].kind_of?(Array)
   rps_game_winner([ rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1]) ])
  else
   rps_game_winner(tournament)
  end
end

def score_bout(player1, player2)
  winner = player2
  return player1 if player1[1].upcase.eql?(player2[1].upcase)
  case player1[1].upcase
  when "P"
    if player2[1].upcase.eql?('R')
      winner = player1
    else
      loser = player2[1]
    end
  when "S"
    if player2[1].upcase.eql?('P')
      winner = player1
      loser = player2[1]
    else
      loser = player1[1]
    end
  when "R"
    if player2[1].upcase.eql?('S')
      winner = player1
      loser = player2[1]
    else
      loser = player1[1]
    end
  end
  return winner

end
