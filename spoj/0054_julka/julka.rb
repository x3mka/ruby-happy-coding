class Julka

  def run (input = STDIN)
    10.times do
      x = input.gets.to_i
      y = input.gets.to_i
      puts (x + y) / 2
      puts (x - y) / 2
    end
  end

end

#Julka.new.run
