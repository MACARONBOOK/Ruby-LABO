-- ruby/leet.rb --

1 標準入力
2 .to_sで標準入力の値を文字列へと変換、.splitで引数にいれた文字で分割→引数が空だから一文字ずつ区切る

3 Leet文字列を格納するための配列を用意
4 配列を要素文、ループ処理←ループで一つずつ取り出す要素が置き換えすべき文字か判定
5 ループ内で行う処理 caseもif同様に条件分岐可(比較対象が複数の場合を除く)


  when "" then
    処理　　　　← 6 条件ごとの処理を記述 .pushは配列に要素を追加するメソッド
  when "" then
    処理
  else
    処理
  end
end

7 Leet文字列用の配列を文字列連結 joinは配列の要素を連結して文字列を作り出すメソッド、outputに置き換え後の文字列が代入される
8 連結した文字列を標準出力

実際の動作
WEBCAMP →→→ W3BC4MP

シンプルなコード(例)

def convert_leet(chara)
  case chara
  when "A" then
    "4"
  when "E" then
    "3"
  when "G" then
    "6"
  when "I" then
    "1"
  when "O" then
    "0"
  else
    chara
  end
end

input = gets
strings = input.to_s.split('')

convert = []
strings.each do |chara|
  convert.push(convert_leet(chara))
end

output = convert.join
puts output

条件分岐による処理で、convert_leet(chara)メソッドを使用。
1文字ずつ分割した配列(strings)をループ処理して、ブロック変数(chara)に1文字ずつ取り出していく。
その変数(chara)を引数に与え、帰ってきた文字列をLeet文字列用の配列convertに追加していく。

さらに簡略化したコード

class String
  def convert_leet
    {A: 4, E: 3, G: 6, I: 1, O: 0}[self.to_sym] || self
  end
end

puts gets.split('').map(&:convert_leet).join

