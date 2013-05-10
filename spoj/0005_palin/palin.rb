class Palin

  def run (input = STDIN)
    input.gets.to_i.times do
      s = input.gets.chomp
      puts next_palindrome s
    end
  end

  def next_palindrome (s)
    n = s.length
    if n == 1
      return '11' if s == '9'
      return s.next!
    end

    return sub(n/2, s[0, n/2], '', s[n/2, n/2]) if n.even?
    return sub(n/2, s[0, n/2], s[n/2], s[n/2 + 1, n/2])
  end

  def sub (m, h1, hm, h2)
    h1_r = h1.reverse
    return h1 << hm << h1_r if h1_r > h2
    (h1 << hm).next!
    return h1 << h1[0, m].reverse
  end

end

#Palin.new.run
