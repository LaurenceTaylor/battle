require 'game'

describe Game do
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  subject { described_class.new(player1, player2) }

  describe '#player1' do
    it 'should contain a player: player1' do
      expect(subject.player1).to eq(player1)
    end
  end

  describe '#player2' do
    it 'should contain a player: player2' do
      expect(subject.player2).to eq(player2)
    end
  end

  describe '#attack' do
    it 'should damage another player' do
      expect(player2).to receive(:reduce_hp)
      subject.attack(player2)
    end
  end
end
