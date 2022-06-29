-- ruby/leet.rb --

1 標準入力
2 .to_sで標準入力の値を文字列へと変換、.splitで引数にいれた文字で分割→引数が空だから一文字ずつ区切る<br>

3 Leet文字列を格納するための配列を用意<br>
4 配列を要素文、ループ処理←ループで一つずつ取り出す要素が置き換えすべき文字か判定<br>
5 ループ内で行う処理 caseもif同様に条件分岐可(比較対象が複数の場合を除く)<br>


  when "" then<br>
    処理　　　　← 6 条件ごとの処理を記述 .pushは配列に要素を追加するメソッド<br>
  when "" then<br>
    処理<br>
  else<br>
    処理<br>
  end<br>
end<br>

7 Leet文字列用の配列を文字列連結 joinは配列の要素を連結して文字列を作り出すメソッド、outputに置き換え後の文字列が代入される<br>
8 連結した文字列を標準出力<br>

実際の動作<br>
WEBCAMP →→→ W3BC4MP<br>

シンプルなコード(例)<br>

def convert_leet(chara)<br>
  case chara<br>
  when "A" then<br>
    "4"<br>
  when "E" then<br>
    "3"<br>
  when "G" then<br>
    "6"<br>
  when "I" then<br>
    "1"<br>
  when "O" then<br>
    "0"<br>
  else<br>
    chara<br>
  end<br>
end<br>
<br>
input = gets<br>
strings = input.to_s.split('')<br>

convert = []<br>
strings.each do |chara|<br>
  convert.push(convert_leet(chara))<br>
end<br>

output = convert.join<br>
puts output<br>

条件分岐による処理で、convert_leet(chara)メソッドを使用。<br>
1文字ずつ分割した配列(strings)をループ処理して、ブロック変数(chara)に1文字ずつ取り出していく。<br>
その変数(chara)を引数に与え、帰ってきた文字列をLeet文字列用の配列convertに追加していく。<br>

さらに簡略化したコード
<br>
class String<br>
  def convert_leet<br>
    {A: 4, E: 3, G: 6, I: 1, O: 0}[self.to_sym] || self<br>
  end<br>
end<br>

puts gets.split('').map(&:convert_leet).join<br>

