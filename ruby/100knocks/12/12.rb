# 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．確認にはcutコマンドを用いよ．

# 確認 cut -f1 ../hightemp.txtの結果と下記プログラムの結果が一致した
File.write('./col1.txt', IO.read('../hightemp.txt').each_line.map{|line| line.split(/\t/)[0]}.join("\n"))

# 確認 cut -f2 ../hightemp.txtの結果と下記プログラムの結果が一致した
File.write('./col2.txt', IO.read('../hightemp.txt').each_line.map{|line| line.split(/\t/)[1]}.join("\n"))
