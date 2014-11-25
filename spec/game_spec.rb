require 'game'

describe Game do

  let(:game) { Game.new }
  let(:player) { double :player, move: :rock }

  it "can have a player" do
    game.add_player(player)
    expect(game.player).to eq (player)
  end

  it "knows how many move options" do
    expect(game.move_count).to eq 3

  end

  it "the robot move is either - rock paper scissor" do
    expect(["rock","paper","scissor"]).to include(game.robot_move)
  end

  it "prints out result draw" do
    expect(game.results("rock", "rock")).to eq "draw"
  end

  it "prints out result win" do
    game.add_player(player)
    player.move
    game.robot_move
    expect(game.results(:rock, :scissor)).to eq "win"
  end

  it "prints out looser" do
    game.add_player(player)
    player.move
    game.robot_move
    expect(game.results(:paper, :scissor)).to eq "looser"
  end



end



