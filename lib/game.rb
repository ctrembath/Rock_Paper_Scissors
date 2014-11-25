class Game

  attr_accessor :player, :shoot

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


  RULES = {rock: :scissor, scissor: :paper, paper: :rock}
  def results(player_move, robot_move)
    self.robot_move

    return "draw" if player_move == robot_move
    return "win" if RULES[player_move]==robot_move
    else "looser"

  end
         
end