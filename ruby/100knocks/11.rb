# タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
# 確認（１）
# sedは調べたけど出来ずじまい。。。
# sed 's/\t/ /g' ./hightemp.txt
# 確認（２）
# ➜  11 git:(master) ✗ cat ./hightemp.txt | tr '\t' ' '
# 同じ結果になった

def replace_tab_with_spece file_path
  File.read(file_path).gsub(/\t/, ' ')
end

puts replace_tab_with_spece './hightemp.txt'
