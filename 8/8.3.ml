(* 目的: 個人のデータ(name, shincho, taiju, birth_date, ketsueki)を表す型*)
type person_t =
  { name: string (* 名前 *)
  ; shincho: int (* 身長 *)
  ; taiju: int (* 体重 *)
  ; birth_date: string (* 誕生日 **)
  ; ketsueki: string (* 血液型 *) }
