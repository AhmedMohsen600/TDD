require 'rspec'


describe Test do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'calculates the factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative integers' do
      expect { solver.factorial(-1) }.to raise_error('Negative integer not allowed')
    end
  end
end