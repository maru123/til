# puts を使わずに結果を返す
->{[*1..100].map {|i| if i%15 == 0; 'FizzBuzz'; elsif i%3 == 0; 'Fizz'; elsif i%5 == 0; 'Buzz'; else i end}.join(' ')}.call
