# frozen_string_literal: true

def fibo(num, seq = [0, 1])
  p seq
  return seq.take(num) if seq.length > num

  seq << seq[-2] + seq[-1]
  fibo(num, seq)
end

p fibo(7)
