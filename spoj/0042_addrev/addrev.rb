class Addrev

  def run (input = STDIN)
    input.gets.to_i.times do
      a, b = input.gets.split(' ')
      ar = a.reverse!.to_i
      br = b.reverse!.to_i
      sum = ar + br
      sum_r = sum.to_s.reverse!.to_i
      puts sum_r
    end
  end

end

#Addrev.new.run
