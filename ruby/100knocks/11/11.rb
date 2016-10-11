# タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
# 確認（１）
# sedは調べたけど出来ずじまい。。。
# sed 's/\t/ /g' ./hightemp.txt
# 確認（２）
# ➜  11 git:(master) ✗ cat ./hightemp.txt | tr '\t' ' '
# 同じ結果になった

File.write('./hightemp.txt', File.read('./hightemp.txt').gsub(/\t/, ' '))
