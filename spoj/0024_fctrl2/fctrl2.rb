class Fctrl2

  def run (input = STDIN)
    input.gets.to_i.times do
      n = input.gets.to_i
      puts factorial n
    end
  end

  def factorial (n)
    f = 1
    (1..n).each { |m| f *= m }
    f
  end

end

#Fctrl2.new.run
