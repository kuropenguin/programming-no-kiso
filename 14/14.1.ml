(* #use "./14/14.1.ml";; *)
(* 1. 受け取ったリスト lst の 偶数の要素のみ含むリストを返す*)
(* even : int list -> list int *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let is_even n = n mod 2 == 0

let even lst = List.filter is_even lst

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)
let test1 = even [] = []

let test2 = even [1] = []

let test3 = even [1; 3] = []

let test4 = even [1; 2] = [2]

let test5 = even [1; 3; 4; 6] = [4; 6]

let test6 = even [0; 1; 3; 4; 6] = [0; 4; 6]
