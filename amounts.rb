amounts = {"リンゴ"=>2, "イチゴ"=>5, "オレンジ"=>3}
amounts.each do |fruits, amount| #ハッシュの内容を順にキーをfruits、値をamountに代入して繰り返す
 puts "#{fruits}は#{amount}個です。"
end