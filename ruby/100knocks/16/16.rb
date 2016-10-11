# 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．

# 確認
# split -l 3 ../hightemp.txt

def split_file_by_lines file_path, number
  lines = File.readlines(file_path)
  lines[0..lines.size.fdiv(number).ceil-1].each_index do |index|
    puts "-----------------------"
    puts lines.slice!(0..number-1)
  end
end

split_file_by_lines '../hightemp.txt', 5
