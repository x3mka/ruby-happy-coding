class Candy

  def run (input = STDIN)
    while (n = input.gets.to_i) != -1 do
      candies = []
      sum = 0
      1.upto(n) do
        c = input.gets.to_i
        candies << c
        sum += c
      end

      if sum % n == 0
        m = sum / n
        moves = 0
        0.upto(n - 1) do |i|
          moves += (candies[i] - m).abs
        end
        puts moves / 2
      else
        puts -1
      end
    end
  end


end

#Candy.new.run
