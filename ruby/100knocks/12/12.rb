# 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．確認にはcutコマンドを用いよ．

def extract_column read_file_path, column_number
  File.write("./col#{column_number}.txt", IO.read(read_file_path).each_line.map{|line| line.split(/\t/)[column_number-1]}.join("\n"))
end

# 確認 cut -f1 ../hightemp.txtの結果と下記プログラムの結果が一致した
extract_column '../hightemp.txt', 1

# 確認 cut -f2 ../hightemp.txtの結果と下記プログラムの結果が一致した
extract_column '../hightemp.txt', 2
