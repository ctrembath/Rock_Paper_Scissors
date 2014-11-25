class Game

  attr_accessor :player
  attr_reader :moves

  def initialize
    @player = nil
  end

  def add_player(player)
    self.player = player
  end

  def move
    ["rock", "paper", "scissor"]
  end

  def move_count
    move.count
  end

  def robot_move
    move.sample
  end


  RULES = {"rock" => "scissor", "scissor" => "paper", "paper" =>"rock"}

  def results(player_move, robot_move)
    return "draw" if player_move == robot_move
     if RULES[player_move]==robot_move
      "win"
    else 
      "looser"
    end
   end
         
end