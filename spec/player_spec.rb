require 'player'

  describe Player do

    let(:player) { Player.new }

    it "should have a name" do
    player.name = "clare"
    expect(player.name).to eq "clare"
    end
end

# can do rock

# can do paper

# can do scissor