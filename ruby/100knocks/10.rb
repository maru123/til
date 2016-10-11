# hightemp.txtの行数をカウントせよ．確認にはwcコマンドを用いよ．
# 確認結果
# ➜  100knocks git:(master) wc -l hightemp.txt
#       24 hightemp.txt
def count_row file_path
  IO.readlines(file_path).count
end

puts count_row 'hightemp.txt'
