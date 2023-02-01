(* #use "./9/9.7.ml";; *)
(* 0. 期待されるデータ型があるなら先に定義 *)
(* 目的: 個人のデータ(name, shincho, taiju, birth_date, ketsueki)を表す型*)
type person_t =
  { name: string (* 名前 *)
  ; shincho: int (* 身長 *)
  ; taiju: int (* 体重 *)
  ; birth_date: string (* 誕生日 **)
  ; ketsueki: string (* 血液型 *) }

(* 9.7 *)
(* 1. 目的：person_t型のデータリストを受け取ったら、血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
(* 3. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 4. 本体の作成(詳細実装) *)
let count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | first :: rest -> (
    match first with
    | {ketsueki= k} -> 0 (* count_ketsueki_A *) )

(* 2. 期待される入出力の準備 *)
let lst1 = []

let lst2 =
  [{name= "hoge"; shincho= 100; taiju= 20; birth_date= "2000"; ketsueki= "A"}]

let lst3 =
  [ {name= "hoge"; shincho= 100; taiju= 20; birth_date= "2000"; ketsueki= "A"}
  ; {name= "fuga"; shincho= 103; taiju= 30; birth_date= "2010"; ketsueki= "B"}
  ]

let lst4 =
  [ {name= "hoge"; shincho= 100; taiju= 20; birth_date= "2000"; ketsueki= "A"}
  ; {name= "fuga"; shincho= 103; taiju= 30; birth_date= "2010"; ketsueki= "B"}
  ; {name= "nini"; shincho= 18; taiju= 10; birth_date= "2010"; ketsueki= "A"}
  ]

(* 3. テスト *)
let test1 = count_ketsueki_A lst1 = 0

let test2 = count_ketsueki_A lst1 = 1

let test3 = count_ketsueki_A lst1 = 1

let test4 = count_ketsueki_A lst1 = 2
