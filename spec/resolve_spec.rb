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

  describe '#fizzbuzz' do
    context 'when the input is a multiple of 3 and 5' do
      it 'returns fizzbuzz' do
        solver = Resolve.new
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when the input is a multiple of 5' do
      it 'returns buzz' do
        solver = Resolve.new
        expect(solver.fizzbuzz(10)).to eq('buzz')
      end
    end

    context 'when the input is a multiple of 3' do
      it 'returns fizz' do
        solver = Resolve.new
        expect(solver.fizzbuzz(9)).to eq('fizz')
      end
    end

    context 'when the input is not a multiple of 3 or 5' do
      it 'returns the input as a string' do
        solver = Resolve.new
        expect(solver.fizzbuzz(2)).to eq('2')
      end
    end
  end
end
