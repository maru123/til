# 12で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．確認にはpasteコマンドを用いよ．

# 確認
# ➜  100knocks git:(master) ✗ paste 12/col1.txt 12/col2.txt
# 高知県  江川崎
# 埼玉県  熊谷
# 岐阜県  多治見
# 山形県  山形
# 山梨県  甲府
# 和歌山県        かつらぎ
# 静岡県  天竜
# 山梨県  勝沼
# 埼玉県  越谷
# 群馬県  館林
# 群馬県  上里見
# 愛知県  愛西
# 千葉県  牛久
# 静岡県  佐久間
# 愛媛県  宇和島
# 山形県  酒田
# 岐阜県  美濃
# 群馬県  前橋
# 千葉県  茂原
# 埼玉県  鳩山
# 大阪府  豊中
# 山梨県  大月
# 山形県  鶴岡
# 愛知県  名古屋

def join_file_contents file1_path, file2_path
  text = ""
  prefectures = Array.new(File.readlines(file1_path))
  cities = Array.new(File.readlines(file2_path))

  prefectures.each_with_index do |prefecture, index|
    text += "#{prefecture.chomp}\t#{cities[index].chomp}\n"
  end

  File.write('file3.txt', text)
end

join_file_contents '../12/col1.txt', '../12/col2.txt'
