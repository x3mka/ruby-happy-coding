class Fashion

  def run (input = STDIN)
    input.gets.to_i.times do
      n = input.gets.to_i
      men = input.gets.split(' ').map &:to_i
      women = input.gets.split(' ').map &:to_i
      men.sort!
      women.sort!
      mmds = 0
      0.upto(n-1) do |i|
        mmds += men[i] * women[i]
      end
      puts mmds
    end
  end


end

#Fashion.new.run
