let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* #use "./14/divisor.ml";; *)
(* 1. nの約数のリストを作る *)
(* divisor : int -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let divisor n = List.filter (fun x -> n mod x = 0) (enumerate n)

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = divisor 0 = []

let test2 = divisor 1 = [1]

let test3 = divisor 5 = [5; 1]

let test4 = divisor 8 = [8; 4; 2; 1]
