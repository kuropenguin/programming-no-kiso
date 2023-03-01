(* lstの中から、 n より p である要素のみを取り出す *)
let take n lst p = List.filter (fun item -> p item n) lst

(* #use "./15/quick_sort.ml";; *)
(* 1. クイックソートを使って昇順に並べ替える *)
(* quick_sort : int list -> int list *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let rec quick_sort lst =
  match lst with
  | [] -> []
  | first :: rest ->
      quick_sort (take first rest ( < ))
      @ [first]
      @ quick_sort (take first rest ( >= ))

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = quick_sort [] = []

let test2 = quick_sort [1] = [1]

let test3 = quick_sort [1; 2] = [1; 2]

let test4 = quick_sort [1; 2] = [1; 2]

let test5 = quick_sort [5; 4; 3; 9; 8; 1; 8] = [1; 3; 4; 5; 8; 8; 9]
