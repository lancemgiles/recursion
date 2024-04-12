# frozen_string_literal: true

def fibo(n)
  n < 2 ? n : fibo(n - 1) + fibo(n - 2)
end 


test = [0, 1, 1, 2, 3, 5, 8, 13]
# p test
p fibo(7)
