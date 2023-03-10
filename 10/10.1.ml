(* #use "./10/10.1.ml";; *)
(* 10.1 *)
(* 1. 目的：昇順にならんでいる整数のlstと整数nを受け取ったら、昇順となる位置にnを挿入する *)
(* insert : int list -> int -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
let rec insert lst n =
  match lst with
  | [] -> [n]
  | first :: rest -> if first < n then first :: insert rest n else n :: lst
(* 5. 本体の作成(詳細実装) *)

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)
let test1 = insert [] 1 = [1]

let test2 = insert [1] 2 = [1; 2]

let test3 = insert [2; 3; 4] 1 = [1; 2; 3; 4]

let test4 = insert [10; 30; 40] 20 = [10; 20; 30; 40]

let test5 = insert [1; 3; 4] 2 = [1; 2; 3; 4]

let test6 = insert [1; 3; 4] 3 = [1; 3; 3; 4]
