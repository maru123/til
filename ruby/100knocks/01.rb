# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
puts "パタトクカシーー".chars.each_with_index.map {|char, index| char unless index.even?}.join
