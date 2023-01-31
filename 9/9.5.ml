(* #use "./9/9.5.ml";; *)
(* 受け取ったリスト lst の 偶数の要素のみ含むリストを返す *)
(* even : int list -> int *)

let rec even lst =
  match lst with
  | [] -> 0
  | first :: rest ->
      if first mod 2 == 0 then 1 + even rest else 0 + even rest

(* テスト *)
let test1 = even [] = 0

let test2 = even [0] = 1

let test3 = even [2; 4] = 2

let test4 = even [1; 2; 3; 4; 5] = 2

let test5 = even [1; 3; 5] = 0

let test6 = even [0; 0; 2] = 3
