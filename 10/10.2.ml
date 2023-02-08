let rec insert lst n =
  match lst with
  | [] -> [n]
  | first :: rest -> if first < n then first :: insert rest n else n :: lst

(* #use "./10/10.2.ml";; *)
(* 1. 目的：整数のリストを受け取ったら、それを昇順に整列したリストを返す *)
(* insert : int list -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let rec ins_sort lst =
  match lst with
  | [] -> []
  | first :: rest -> insert (ins_sort rest) first

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = ins_sort [] = []

let test1 = ins_sort [1] = [1]

let test1 = ins_sort [1; 2] = [1; 2]

let test1 = ins_sort [2; 5; 1] = [1; 2; 5]

let test1 = ins_sort [3; 2; 1] = [1; 2; 3]
