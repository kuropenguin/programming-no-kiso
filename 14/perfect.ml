let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

let divisor n = List.filter (fun x -> n mod x = 0) (enumerate n)

(* #use "./14/perfect.ml";; *)
(* 1. m以下の完全数のリストを作る *)
(* perfect : int -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let perfect m =
  List.filter
    (fun n -> List.fold_right ( + ) (divisor n) 0 - n = n)
    (enumerate m)

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = perfect 0 = []

let test2 = perfect 10000 = [8128; 496; 28; 6]
