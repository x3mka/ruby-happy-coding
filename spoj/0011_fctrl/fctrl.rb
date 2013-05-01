class Fctrl

  def run (input = STDIN)
    input.gets.to_i.times do
      n = input.gets.to_i
      z = 0
      while n > 0 do
        z += n / 5
        n /= 5
      end
      puts z
    end
  end

end

#Fctrl.new.run
