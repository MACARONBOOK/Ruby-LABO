def fizz_buzz(number)
 if number % 15 == 0
   "FizzBuzz"
 elsif number % 3 == 0
   "Fizz"
 elsif number % 5 == 0
   "Buzz"
 else
   number.to_s     #to_sは、文字列以外を文字列に変換する。
 end
end

puts "数字を入力してください。"

input = gets.to_i

 puts "結果は..."
 puts fizz_buzz(input)



 #ポイント 「3と5両方で割り切れる数値」をどのような条件で表現するか
 #　　　　 「条件式の順番」の２つが重要。
 #　　　　 条件分岐の先頭注意！if文は上からtrue/falseで処理される。
 #　　　　 意図したとおりに評価が行われなくなる可能性も。