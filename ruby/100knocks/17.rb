# 1列目の文字列の種類（異なる文字列の集合）を求めよ．確認にはsort, uniqコマンドを用いよ．
# 確認
# ➜  100knocks git:(master) ✗ cut -f1 ./hightemp.txt | sort | uniq
# 千葉県
# 埼玉県
# 大阪府
# 山形県
# 山梨県
# 岐阜県
# 愛媛県
# 愛知県
# 群馬県
# 静岡県
# 高知県
# 和歌山県

puts IO.read('./hightemp.txt').each_line.map{|line| line.split(/\t/)[0]}.sort.uniq
