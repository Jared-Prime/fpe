require 'rspec'
require './problem_11.rb'

describe Grid do
  subject { described_class.new n }
  let(:n){ 4 }

  describe '#push' do
    specify 'adds lines up to n' do
      5.times { subject.push [1,2,3,4] }
      expect(subject.size).to eq(4)
    end

    specify 'shifts lines up once max is reached' do
      (1..5).each { |n| subject.push [n] }
      expect(subject[0]).to eq([2])
    end
  end

  describe '#diagl' do
    let(:example) do
      subject.push [1,0,0,0]
      subject.push [0,1,0,0]
      subject.push [0,0,1,0]
      subject.push [0,0,0,1]
    end

    specify 'returns the left leaning diagnal' do
      expect(subject.diagl).to eq([1,1,1,1])
    end
  end
end
