class Test

  def run (input = STDIN)
    while (s = input.gets.chomp) != "42" do
      puts s
    end
  end

end

#Test.new.run
