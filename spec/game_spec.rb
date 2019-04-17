require 'game'

describe Game do
  let (:subject) { described_class.new }
  let (:player_one) { double :player_one }
  let (:player_two) { double :player_two }

  describe '#attack' do
    it 'damages the player' do
      expect(player_two).to receive(:receive_damage)
      subject.attack(player_two)
    end
  end
end
