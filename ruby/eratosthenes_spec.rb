require './eratosthenes'

describe EratosthenesSieve do
  subject { described_class }

  describe '.primes_less_than' do
    specify do
      expect(subject.primes_less_than(28)).to eq [2,3,5,7,11,13,17,19,23]
    end
  end

  describe '.prime_divisors' do
    specify do
      expect(subject.prime_divisors(28)).to eq [2,7]
    end
  end

  describe '' do
    specify do
      expect(subject.triangle_number_factors(28)).to eq 6
    end
  end

  describe '' do
    specify do
      expect(subject.exponents(28)).to eq 6
    end
  end
end
