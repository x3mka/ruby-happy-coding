class Samer08f

  def run (input = STDIN)
    while (n = input.gets.to_i) != 0 do
      puts squares n
    end
  end

  def squares (n)
    s = 0
    (1..n).each do |m|
      s += (n - m + 1)**2
    end
    s
  end

end

#Samer08f.new.run
                                            p