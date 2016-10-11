# 各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．
# 確認
# ➜  100knocks git:(master) ✗ cut -f1 ./hightemp.txt | sort | uniq -c | sort -r
#    3 群馬県
#    3 山梨県
#    3 山形県
#    3 埼玉県
#    2 静岡県
#    2 愛知県
#    2 岐阜県
#    2 千葉県
#    1 和歌山県
#    1 高知県
#    1 愛媛県
#    1 大阪府
prefectures = File.readlines('./hightemp.txt').map{|line| line.split[0]}
puts prefectures.uniq.each_with_object([]) { |prefecture,array|
  array << [prefecture, prefectures.count(prefecture)]
}.sort_by{|prefecture| prefecture[1]}.reverse.to_h
