require 'prime'

module Prime1

  class << self

    MAX = Math.sqrt(1000000000).to_i

    def run
      @primes = eratosthenes2 MAX
      first = true
      STDIN.gets.to_i.times do
        puts unless first
        first = false
        m, n = STDIN.gets.split(' ').map(&:to_i)
        run_case m, n
      end
    end

    def run_case (m, n)
      m = 2 if m < 2
      highest_factor = Math.sqrt(n).floor
      not_primes = {}
      @primes.each do |prime|
        # Break if prime factor is greater than the highest possible factor of the given range
        break if prime > highest_factor
        # Determine the number in the range from where Eratosthenes Sieve can be applied
        if prime >= m
          start = 2*prime
        else
          start = m + (prime - m % prime) % prime
        end

        # Eratosthenes Sieve
        while start <= n
          not_primes[start] = true
          start += prime
        end
      end
      (m..n).each {|number| puts number if !not_primes[number]}
    end

    def prime?(n)
      @primes.each do |i|
        break if i*i > n
        if n % i == 0
          return false
        end
      end
      true
    end

    def eratosthenes_ruby (n)
      Prime.take_while {|p| p <= n }
    end

    def eratosthenes(n)
      nums = [0, 0] + (2..n).to_a
      (2..Math.sqrt(n).to_i).each do |i|
        if nums[i].nonzero?
          (i**2..n).step(i) {|m| nums[m] = 0}
        end
      end
      nums.find_all {|m| m.nonzero?}
    end

    def eratosthenes2(n)
      # For odd i, if i is prime, nums[i >> 1] is true.
      # Set false for all multiples of 3.
      nums = [true, false, true] * ((n + 5) / 6)
      nums[0] = false  # 1 is not prime.
      nums[1] = true   # 3 is prime.

      # Outer loop and both inner loops are skipping multiples of 2 and 3.
      # Outer loop checks i * i > n, same as i > Math.sqrt(n).
      i = 5
      until((m = i * i) > n) do
      if nums[i >> 1]
        i_times_2 = i << 1
        i_times_4 = i << 2
        while m <= n
          nums[m >> 1] = false
          m += i_times_2
          nums[m >> 1] = false
          m += i_times_4  # When i = 5, skip 45, 75, 105, ...
        end
      end
      i += 2
      if nums[i >> 1]
        m = i * i
        i_times_2 = i << 1
        i_times_4 = i << 2
        while m <= n
          nums[m >> 1] = false
          m += i_times_4  # When i = 7, skip 63, 105, 147, ...
          nums[m >> 1] = false
          m += i_times_2
        end
      end
      i += 4
      end

      primes = [2]
      nums.each_index {|i| primes << (i * 2 + 1) if nums[i]}
      primes.pop while primes.last > n
      return primes
    end
  end

end

Prime1.run

#require 'benchmark'
#n = 1000000
#Benchmark.bm do |x|
#  x.report { Prime1.eratosthenes(n) }
#  x.report { Prime1.eratosthenes2(n) }
#  x.report { Prime1.eratosthenes_ruby(n) }
#end

