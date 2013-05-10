class Toandfro

  def run (input = STDIN)
    while (c = input.gets.to_i) != 0 do
      s = input.gets.chomp
      puts ns s, c
    end
  end

  def ns (s, c)
    res = ''
    n = s.length
    r = n / c
    0.upto(n - 1) do |i|
      ir = i % r
      ic = i / r
      index = ir.even? ? ir * c + ic : (ir + 1) * c - ic - 1
      res << s[index]
    end
    res
  end

end

#Toandfro.new.run
