(* #use "./11/11.1.ml";; *)
(* 1. 目的：0~Nまでの2乗の和を求める *)
(* sum_of_square : int -> int *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let rec sum_of_square n = if n = 0 then 0 else (n * n) + sum_of_square (n - 1)

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = sum_of_square 0 = 0

let test2 = sum_of_square 1 = 1

let test3 = sum_of_square 2 = 5

let test4 = sum_of_square 3 = 14

let test5 = sum_of_square 4 = 30
