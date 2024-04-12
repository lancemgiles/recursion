# frozen_string_literal: true

class Fibs
  attr_accessor :len, :seq, :acc

  def initialize(len)
    @len = len
    @seq = []
    @acc = 0
  end

  def fibo
    if @acc < 2
      @seq.unshift(@acc)
      @acc += 1
    else
      @acc = fibo((@acc - 1)) + fibo((@acc - 2))
      @seq.unshift(@acc)
    end
    if @seq.length == len
      @seq
    end
  end
end

test = [0, 1, 1, 2, 3, 5, 8, 13]
# p test
fibs = Fibs.new(7)
i = 0
while i < 7
  p fibs.fibo
  i += 1
end
