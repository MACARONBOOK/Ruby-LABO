class Car

 def move(direction,distance)
  self.turn(direction)
  self.run(distance)
 end

 def turn(direction)
  puts "#{direction}に曲がります。"
 end
 def run(distance)
   puts "車で#{distance}キロ走ります。"
 end
end


car = Car.new
car.move("右",5)                #レシーバ(selfの値).メソッド(引数)


# クラスメソッド
class Car
 def self.run(distance)
  puts "車で#{distance}キロ走ります。"
 end
end

Car.run(10)





# 作成手順
# 1.Carクラスのインスタンス生成→carに代入
# 2.Carクラスのmoveメソッドの呼び出し(引数は"右"、5)
# 3.moveメソッドを上から読み込み
# 4.turnメソッドを呼出
# 5.runメソッドを呼出
# 6.endまで読み込んで処理が終了