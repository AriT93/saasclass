require 'spec_helper'

module Assignment1
  describe "#rps_game_winner" do
    it "should raise an error for the wrong number of players" do
      players = [["armando", "P"]]
      lambda { rps_game_winner(players)}.should raise_error(WrongNumberOfPlayersError)
    end
    it "should return a string with the winning strategy" do
      players = [["armando", "p"],["dave","s"]]
      rps_game_winner(players).should == players[1]
    end
    it "should let Paper beat Rock" do
      players = [["armando", "p"],["dave","R"]]
      rps_game_winner(players).should == players[0]
    end
    it "should let Scissors beat Paper" do
      players = [["armando", "s"],["dave","p"]]
      rps_game_winner(players).should == players[0]
    end
    it "should let Rock beat Scissors" do
      players = [["armando", "r"],["dave","s"]]
      rps_game_winner(players).should == players[0]
    end
    it "should raise and error on an illegal strategy" do
      players = [["armando", "r"],["dave","d"]]
      lambda { rps_game_winner(players)}.should raise_error(NoSuchStrategyError)
    end
    it "should scare a tie for player 1" do
      players = [["armando", "s"],["dave","s"]]
      rps_game_winner(players).should == players[0]
    end
  end
  describe "#rps_tournament_winner" do
    it "should score a tournament" do
      players = [[["bob", "p"],["ray", "s"]],[["paul", "r"],["tom","s"]]]
      rps_tournament_winner(players)[0].should == "paul"
    end
    it "shold score a tournament of 1 match" do
      players = [["armando", "r"],["dave","s"]]
      rps_tournament_winner(players)[0].should == "armando"
    end
    it "should score the example correctly" do
      players = [[[ ["Armando", "P"], ["Dave", "S"] ],[ ["Richard", "R"],  ["Michael", "S"] ],],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]]
      rps_tournament_winner(players)[0].should == "Richard"
    end
  end
end
