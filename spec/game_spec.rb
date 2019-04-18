require 'game'

describe Game do

  let (:player_one) { double :player_one }
  let (:player_two) { double :player_two }
  let (:subject) { described_class.new(player_one, player_two) }

  describe '#attack' do
    it 'damages the player' do
      allow(player_two).to receive(:receive_damage)
      subject.attack(player_two)
    end
  end

  describe '#player_one' do
    it 'returns player 1' do
      expect(subject.player_one).to eq player_one
    end
  end

  describe '#player_two' do
    it 'returns player 2' do
      expect(subject.player_two).to eq player_two
    end
  end

  describe '#current_player' do
    it 'starts on player one' do
      expect(subject.current_player).to eq player_one
    end
  end

  describe '#switch_turns' do
    it 'should switch the current player' do
      subject.switch_turns
      expect(subject.current_player).to eq player_two
    end
  end

  describe '#opponent_of' do
    it 'finds the players opponent' do
      expect(subject.opponent_of(player_one)).to eq player_two
    end
  end
end
