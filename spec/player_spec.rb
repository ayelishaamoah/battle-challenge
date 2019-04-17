require 'player'

describe Player do
  let (:subject) { described_class.new("Ayelisha") }
  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.name).to eq "Ayelisha"
    end
  end

  describe "#receive_damage" do
    it 'reduces players HP by 10 HP' do
      subject.receive_damage
      expect(subject.hit_points).to eq 90
    end
  end
end
