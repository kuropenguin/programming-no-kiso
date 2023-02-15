(* #use "./14/14.3.ml";; *)
(* 1. 受け取った文字列のリスト lst の 要素を前から順にくっつけた文字列を返す*)
(* concat : string list -> string *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let concat_str a b = a ^ b

let concat lst = List.fold_right concat_str lst ""

(* 3. 期待される入出力の準備 *)
(* 4. テスト *)

let test1 = concat [] = ""

let test2 = concat ["a"] = "a"

let test3 = concat ["a"; "b"] = "ab"

let test4 = concat ["a"; "bc"; "d"] = "abcd"
