# BBQチーム分けプログラム募集
# 去年の見ちゃダメ！！
# gemも使うな
# 4テーブル
# 3人ずつ
# 1テーブル3人ずつ

menbers = ["Akiさん","伊藤さん","田中さん","荻さん","村瀬さん","松田さん","たいらさん","なかししさん","三原さん","船津さん","宮本さん","丸山"]

puts 3.times.each_with_object({}){|num, hash|
  menbers.shuffle!
  hash[num + 1] = menbers.slice!(0..2)
}
