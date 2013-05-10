class Nsteps

  def run (input = STDIN)
    input.gets.to_i.times do
      x, y = input.gets.split(' ').map &:to_i
      puts f(x, y)
    end
  end

  NO_NUMBER = 'No Number'

  def f(x, y)
    return NO_NUMBER if x < 0 || y < 0
    return NO_NUMBER unless (x == y || x == y + 2)

    if x == y
      return g(x)
    else
      return g(x-2) + 2
    end
  end

  def g(x)
    2*x - (x % 2)
  end

end

#Nsteps.new.run
