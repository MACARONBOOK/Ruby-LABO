クラスとは
メソッドなどをひとつにまとめた設計図のようなもの
設計図がクラスだとすると、設計の内容にあたるのがメソッド
書き方はclassの後に任意のクラス名、クラス名は始まりが大文字
クラス内に記述されたメソッドをインスタンスメソッドという

インスタンスとは
設計図をもとに作成される「モノ」がインスタンス
書き方は、クラス名の後ろに.newをつける
インスタンス名.メソッド名とすることで呼び出せる
インスタンスは、クラスで書かれている設計を元に生成されるオブジェクトでもある

オブジェクトとは
人や動物、車などありとあらゆるものがオブジェクト
Rubyは、全てのデータをオブジェクトとして扱う
オブジェクトは、必ずどこかのクラスに所属
所属しているクラスによって使えるメソッドが変わる

selfとは
selfは、オブジェクト自身の事
クラスメソッド、レシーバとして使われるselfの2種類がある
クラスメソッド
クラスメソッドは、クラスから実行できるメソッド
クラス全体に関わる情報を変更するメソッドを作成するときなどに使用

レシーバのself
レシーバとは、メソッドを呼び出したオブジェクト自身のこと
( . )の左側の部分がレシーバ
インスタンスメソッド内でselfを定義した場合、そのメソッドを呼び出したレシーバがselfの値
この後に学習するRailsにも self を使う記述が出てくる