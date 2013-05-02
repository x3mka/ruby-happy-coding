class Onp

  def run (input = STDIN)
    input.gets.to_i.times do
      s = input.gets
      puts rpn s
    end
  end

  def rpn (infix)
    postfix = ""

    stack = Stack.new

    infix.each_byte do |sym|
      sym = "" << sym  # Convert to string
      case sym
        when "("
          stack.push sym

        when /[a-z]/
          postfix += sym

        when "*", "/", "+", "-", "^"
          finished = false
          until finished or stack.empty?
            if level(sym) > level(stack.peek)
              finished = true
            else
              postfix += stack.pop
            end
          end
          stack.push sym

        when ")"
          while stack.peek != "("
            postfix += stack.pop
          end
          stack.pop # Get rid of parent on stack
      end
    end

    while !stack.empty?
      postfix += stack.pop
    end

    postfix

  end

  def level(op)
    case op
      when "^"
        3
      when "*", "/"
        2
      when "+", "-"
        1
      when "("
        0
    end
  end

end



class Stack

  def initialize
    @store = []
  end

  def push(x)
    @store.push x
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def empty?
    @store.empty?
  end

end

#Onp.new.run
