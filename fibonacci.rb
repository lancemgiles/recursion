# frozen_string_literal: true

def fibo(n)
  if n < 2
   p n
  else
    p fibo(n - 1) + fibo(n - 2)
  end
end


test = [0, 1, 1, 2, 3, 5, 8, 13]
# p test
fibo(7)
