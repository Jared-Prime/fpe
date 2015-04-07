class EratosthenesSieve
  class << self
    def exponents(n)
      primes = primes_less_than n
      exponents = []
      for p in primes
        q = n
        exponents << 0
        until q % p != 0 
          exponents[-1] += 1
          q = q / p 
          yield q, sum
        end
      end
      return exponents
    end

    def prime_divisors(n)
      primes = primes_less_than n
      primes.select{ |p| n % p == 0 }
    end

    def primes_less_than(n)
      integers = (3..n).to_a
      primes = [2]
      until integers.empty? || integers.first >= n
        integers.reject!{|i| i % primes.last == 0}
        primes << integers.shift
      end
      return primes
    end
  end
end
