(* #use "./13/13.2.ml";; *)
(* 1. 目的: person_t型のリストを受け取ったら、その中に出てくる人の名前のリストを返す *)
(* person_namae : lst -> string *)
(* 2. テンプレートの作成(リストを受け取るならmatchを使うなど,大枠) *)
(* 5. 本体の作成(詳細実装) *)
let rec person_namae lst =
  match lst with
  | [] -> []
  | first :: rest -> person_namae rest

(* 3. 期待される入出力の準備 *)
(* 目的: 個人のデータ(name, shincho, taiju, birth_date, ketsueki)を表す型*)
type person_t =
  { name: string (* 名前 *)
  ; shincho: int (* 身長 *)
  ; taiju: int (* 体重 *)
  ; birth_date: string (* 誕生日 **)
  ; ketsueki: string (* 血液型 *) }

(* 4. テスト *)
let test1 = person_namae [] = []

let test2 =
  person_namae
    [{name= "hoge"; shincho= 2; taiju= 3; birth_date= "2"; ketsueki= "A"}]
  = ["hoge"]

let test3 =
  person_namae
    [ {name= "hoge"; shincho= 2; taiju= 3; birth_date= "2"; ketsueki= "A"}
    ; {name= "fuga"; shincho= 2; taiju= 3; birth_date= "2"; ketsueki= "A"} ]
  = [("hoge", "fuga")]
