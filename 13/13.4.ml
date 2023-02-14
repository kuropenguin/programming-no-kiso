(* #use "./13/13.4.ml";; *)
(* 1. 関数を二つ受け取ったら、その二つの関数を合成した関数を返す *)
(* compose : fn fn -> fn *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let compose f g =
  let h x = f (g x) in
  h

(* 3. 期待される入出力の準備 *)
(* 目的：3 を加える *)
(* add3: int -> int *)
let add3 x = x + 3

(* 目的：2 を掛ける *)
(* times2: int -> int *)
let times2 x = x * 2

(* 4. テスト *)

let test1 = (compose times2 add3) 3 = 12

let test2 = (compose add3 times2) 3 = 9
