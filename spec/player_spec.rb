require "player"

  describe Player do

    let(:player) { Player.new }
    let(:robot) { double :robot }

    it "should have a name" do
    player.name = "clare"
    expect(player.name).to eq "clare"
    end

    it "can do rock" do
      expect(player.moves('rock')).to eq 'rock'
    end

    it "can do scissors" do
      expect(player.moves('scissor')).to eq 'scissor'
    end


    it "can do paper" do
      expect(player.moves('paper')).to eq 'paper'
    end
end

# can do rock

# can do paper

# can do scissor