(* #use "./14/enumerate.ml";; *)
(* 1. 1からnまでのリストを作る *)
(* enumerate : int -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = enumerate 0 = []

let test2 = enumerate 1 = [1]

let test3 = enumerate 5 = [5; 4; 3; 2; 1]
