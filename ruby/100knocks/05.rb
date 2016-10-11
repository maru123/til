# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．

# N-gram とは？
# 「N文字インデックス法」「Nグラム法」などともいう。検索対象を単語単位ではなく文字単位で分解し、後続の N-1 文字を含めた状態で出現頻度を求める方法。Nの値が1なら「ユニグラム(uni-gram)」、2なら「バイグラム(bi-gram)」、3なら「トライグラム(tri-gram)」と呼ばれる。たとえば「全文検索技術」という文字列の場合、「全文」「文検」「検索」「索技」「技術」「術（終端）」と2文字ずつ分割して索引化を行ってやれば、検索漏れが生じず、辞書の必要も無い。形態素解析によるわかち書きに比べると、2つの欠点がある。意図したものとは異なる検索結果（いわゆる検索ノイズ）の発生と、インデックスサイズの肥大化である。検索ノイズの一例として、「京都」で検索すると「東京都庁」という適合しない検索結果が返ってくる場合が挙げられる。

# 期待する戻り値
# - 単語bi-gram
#  I am
#  am an
#  an NLPre
#  NLPre
# - 文字bi-gram
#  Ia
#  am
#  ma
#  an
#  nN
#  NL
#  LP
#  Pe
#  er
#  r

def n_gram sentence, n
  puts '---文字n-gram---'
  puts char_n_gram sentence, n
  puts '---単語n-gram---'
  puts word_n_gram sentence, n
end

def char_n_gram sentence, n
  chars = sentence.split('')
  chars.each_index.each_with_object([]){|index, array|
    array << chars[index..index+(n-1)].join
  }
end

def word_n_gram sentence, n
  words = sentence.split(' ')
  words.each_index.each_with_object([]){|index, array|
    array << words[index..index+(n-1)].join(' ')
  }
end

n_gram("I am an NLPer", 2)
