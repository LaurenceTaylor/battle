require 'player'

describe Player do
  subject(:laurence) { described_class.new('Laurence') }

  it 'should return its name' do
    expect(laurence.name).to eq('Laurence')
  end

  describe '#reduce_hp' do
    it 'should reduce HP by 10' do
      expect { subject.reduce_hp }.to change { subject.hp }.by(-10)
    end
  end
end
