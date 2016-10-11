# hightemp.txtの行数をカウントせよ．確認にはwcコマンドを用いよ．
# 確認結果
# ➜  100knocks git:(master) wc -l hightemp.txt
#       24 hightemp.txt
puts IO.readlines('hightemp.txt').count
