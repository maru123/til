# 与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．
# - 英小文字ならば(219 - 文字コード)の文字に置換
# - その他の文字はそのまま出力
# この関数を用い，英語のメッセージを暗号化・復号化せよ．
def cipher string
  string.chars.map{|letter| letter == letter.upcase ? letter : (219 - letter.ord).chr}.join
end

puts cipher 'Could This Words Be Ciphered?'
puts cipher 'Clfow Tsrh Wliwh Bv Crksvivw?'
