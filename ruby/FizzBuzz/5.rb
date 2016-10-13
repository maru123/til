# 最短で書く
proc = Proc.new{(1..100).each{|i| puts i%15 == 0 ? 'FizzBuzz' : i%3 == 0 ? 'Fizz' : i%5 == 0 ? 'Buzz' : i }}
proc.call
