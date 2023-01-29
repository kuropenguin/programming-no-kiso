(* 8.5 *)
(* 目的: 駅名のデータ(kanji, kana, romaji, shozoku)を表す型*)
type ekimei_t =
  { kanji: string (* 漢字 *)
  ; kana: string (* カナ *)
  ; romaji: string (*ローマ字*)
  ; shozoku: string (*路線名*) }

(* 8.6 *)
(* 駅名のデータekimei_t を受け取り路線名,駅名（かな）を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei_t =
  match ekimei_t with
  | {kanji; kana; shozoku} -> shozoku ^ "," ^ kanji ^ "(" ^ kana ^ ")"

(* test *)
let test8_6_1 =
  hyoji {kanji= "茗荷谷"; kana= "みょうがだに"; romaji= "myougadani"; shozoku= "丸の内線"}
  = "丸の内線,茗荷谷(みょうがだに)"

(* 8.7 *)
(* 目的: 駅と駅の接続情報を表す(kiten, shuten, keiyu, kyori, jikan)を表す型*)
type ekikan_t =
  { kiten: string (* 起点の駅名 *)
  ; shuten: string (* 終点の駅名 *)
  ; keiyu: string (*経由する路線名*)
  ; kyori: string (*2駅間の距離*)
  ; jikan: string (*所要時間*) }
