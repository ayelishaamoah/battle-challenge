require 'player'

describe Player do
  let (:subject) { described_class.new("Ayelisha") }
  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.name).to eq "Ayelisha"
    end
  end

  describe "#reduce_HP" do
    it 'reduces players HP by 2 HP' do
      subject.reduce_hp
      expect(subject.hp).to eq 90
    end
  end
end
