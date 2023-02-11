require 'rspec'
require_relative '../resolve'

describe Resolve do
  describe '#factorial' do
    subject { described_class.new.factorial(num) }

    context 'with a positive integer' do
      let(:num) { 5 }

      it 'calculates the factorial' do
        expect(subject).to eq(120)
      end
    end

    context 'with a negative integer' do
      let(:num) { -5 }

      it 'raises an error' do
        expect { subject }.to raise_error('Negative integer not allowed')
      end
    end
  end
end