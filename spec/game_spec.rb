require "game"

describe Game do

  let(:game) { Game.new }
  let(:player) { double :player }

it "can have a player" do
  game.add_player(player)
  expect(game.player).to eq(player)

end


end
 # has one player

# has one robot player


# each player makes move


# has one winner


