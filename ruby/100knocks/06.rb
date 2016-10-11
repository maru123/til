# "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．

def char_n_gram sentence, n
  chars = sentence.split('')
  chars.each_index.each_with_object([]){|index, array|
    array << chars[index..index+(n-1)].join
  }
end

puts '(1)"paraparaparadise"に含まれる文字bi-gramの集合をXという変数に入れる'
puts X = char_n_gram("paraparaparadise", 2)

puts '(2)"paragraph"に含まれる文字bi-gramの集合をYという変数に入れる'
puts Y = char_n_gram("paragraph", 2)

puts '(3)XとYの和集合を求める'
puts (X + Y).flatten.uniq

puts '(4)XとYの積集合を求める'
puts X & Y

puts '(5)XとYの差集合を求める'
puts (X + Y).flatten.uniq - (X & Y)

puts '(6)\'se\'がXおよびYに含まれるか'
puts (X & Y).include?("se")
