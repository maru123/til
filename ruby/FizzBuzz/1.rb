# （１）n += 1を使わない
->{ for i in 1..100; text = ""; text = 'Fizz' if i%3 == 0; text += 'Buzz'if i%5 == 0; text = i if i%3 != 0 && i%5 != 0; puts text;end}.call
