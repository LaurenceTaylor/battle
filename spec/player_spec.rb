require 'player'

describe Player do
  subject(:laurence) { described_class.new('Laurence') }
  subject(:ecnerual) { described_class.new('Ecnerual') }

  describe '#name' do
    it 'should return its name' do
      expect(laurence.name).to eq('Laurence')
    end
  end

  describe '#reduce_hp' do
    it 'should reduce HP by 10' do
      expect { subject.reduce_hp }.to change { subject.hp }.by(-10)
    end
  end

  describe '#attack' do
    it 'should damage another player' do
      expect(ecnerual).to receive(:reduce_hp)
      laurence.attack(ecnerual)
    end
  end
end
