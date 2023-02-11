require 'rspec'
require_relative '../resolve'

describe Resolve do
  let(:subject) { described_class.new }

  describe '#factorial' do
    context 'when the argument is a positive integer' do
      it 'returns the factorial of the argument' do
        expect(subject.factorial(5)).to eq(120)
      end
    end

    context 'when the argument is a negative integer' do
      it 'raises an error with a message' do
        expect { subject.factorial(-1) }.to raise_error(RuntimeError, 'Negative integer not allowed')
      end
    end
  end
  
  describe '#reverse' do
    context 'when the argument is a word' do
      it 'returns the reversed word' do
        expect(subject.reverse('hello')).to eq('olleh')
      end
    end
  end
end