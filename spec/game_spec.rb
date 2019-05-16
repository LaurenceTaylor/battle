require 'game'

describe Game do
  let(:laurence) { Player.new('Laurence') }

  describe '#attack' do
    it 'should damage another player' do
      expect(laurence).to receive(:reduce_hp)
      subject.attack(laurence)
    end
  end
end
