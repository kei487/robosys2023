# plusコマンド
![test](https://github.com/kei487/robosys202x/actions/workflows/test.yml/badge.svg)

-  [イントロダクション](#イントロダクション)
-  [使い方](#使い方)
  -  [インストール方法](#インストール方法)
  -  [実行方法](#コードの実行方法)
-  [要求環境](#要求環境)
  -  [必要なソフトウェア](#必要なソフトウェア)
  -  [テスト環境](#テスト環境)
-  [ライセンス](#ライセンス)

# イントロダクション
  標準入力から渡された数値を全て足し合わせて返却するプログラムです.

# 使い方
## インストール方法
```
$ git clone git@github.com:kei487/robosys2023.git
```

## コードの実行方法
```
$ chmod +x plus
$ seq 10 | ./plus 
55
```

# 要求環境
## 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10

## テスト環境
* Ubuntu

# ライセンスなど
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
 * このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
      * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Keitaro Nakamura 
