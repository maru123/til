# メソッドにする
def fizz_buzz num; ->(num){(1..num).each_with_object([]) {|num, array| array << if num%15 == 0; 'FizzBuzz'; elsif num%3 == 0; 'Fizz'; elsif num%5 == 0; 'Buzz'; else num; end}.join(' ');}.call(num) end
