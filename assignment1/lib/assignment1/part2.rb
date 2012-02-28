class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each{ |p| raise NoSuchStrategyError unless p[1].match(/[PRSprs]/) }
  $player1 = game[0]
  $player2 = game[1]
  $winner = $player2
  case $player1[1].upcase
  when "P"
    if $player2[1].upcase.eql?('R')
      $winner = $player1
      $loser = $player2[1]
    else
      $loser = $player1[1]
    end
  when "S"
    if $player2[1].upcase.eql?('P')
      $winner = $player1
      $loser = $player2[1]
    else
      $loser = $player1[1]
    end
  when "R"
    if $player2[1].upcase.eql?('S')
      $winner = $player1
      $loser = $player2[1]
    else
      $loser = $player1[1]
    end
  end
  return $winner
end
