# if..else文を使わずに書く
def fizz_buzz num; proc = Proc.new{(1..100).each {|num| next puts 'FizzBuzz' if num%15 == 0; next puts 'Fizz' if num%3 == 0; next puts 'Buzz' if num%4 == 0; puts num }}; proc.call; end
