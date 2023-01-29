## OCaml の実行

## 対話的に実行する

- `ocaml`コマンドで対話モード立ち上げ
- `hogehoge;;` で hogehoge を実行(`;;`が区切り文字)
  - example: `1+2*3;;`
- `#quit;;` で対話モードから抜ける

### ファイルを読み込ませて実行する

- `ocaml`コマンドで対話モード立ち上げ
- `#use "hogehoge.ml"`で読み込ませるフィルを指定して実行
  - 絶対パスで指定しても良い
- `#quit;;` で対話モードから抜ける


## プログラム

```ocaml
bool
true;;
false;;
```

論理演算
```ocaml
&&, ||, not
```

文字列の足し算(^)
```
"hogehoge" ^ "fuga";;
```

無限大・マイナスの無限大
```ocaml
infinity;;
neg_infinity;;
```

変数
```
let hogehoge = 12
```
- 先頭の文字はアルファベットの小文字である必要がある
- 変数は書き換え不可（実質定数と同じ）

コメント
```
(* *) で囲む

(* hogehoge *)
(* fuga fuga *)
```

条件分岐
```
if hoge then 1（式） 
else if then 2（式）
else 3（式）
それぞれの式は同じ型である必要がある
```

符号反転
```
-.

x = 3 の時
-.x = -3
```

### 関数
定義
```
let 関数名 引数 ... = 式
let hoge x = x ** 2
```

実行
```
hoge 3;;

hoge(3);; でも
```

複数の引数
```
let fuga x y z = x+y+z;;
fuga 1 2 3;;
```

関数の型
```
let f x = x * 3;;

int -> int という型
ちなみにここでxが整数として決まったのは、整数3との乗算で使用される値のため（型推論）
```
- A -> B : Aの型の値を受け取ってBの型の値を返す
- 複数引数の場合( A,Bを受けてCを返す)
  - A -> B -> C
	- A -> (B -> C)
	- Aを受け取り、Bを受け取ったら、Cを返す


## 組とパターンマッチ
組：いくつかのデータを並べて一つのデータとして扱うもの
```
(1.2, 2.24)

((2,"a"), 2.3)

22, 2.5
```

パターンマッチ
```
match (3,5) with
	(a,b) -> a+b;;


let add pair = match pair with
 (a,b) -> a+b;;


add(3,5);
# =8
```

### レコード（dict）
レコード
```
let hoge = {hogehoge = "aaa", fugafuga = 1, xxx = 1.4}
hoge.hogehoge;;
hoge.xxx;
```

型定義
```
type hogehoge = {
	xxx : string;
	yyy : int;
}
```

## リスト
```
[]
# 値を入れる
1 :: []

# listに hogeを入れる
hoge :: list

1 :: 2 :: 3 :: [] # <= [1,2,3]

#普通に下のようにも書ける
[1;2;3;...n;] # <= 1 :: 2 :: 3 :: ... n :: []
```

リストのパターンマッチ(switch文みたいなもの？？)
```
match 式 with の実行結果が、最初にマッチしたパターンnの式nが実行される
match 式 with
 パターン1 -> 式1
| パターン2 -> 式2
| パターン3 -> 式3
...
| パターンn -> 式n

# 下のように書くと、 firstに先頭要素・resetに先頭を除いたリストが入る
first :: reset 
```
