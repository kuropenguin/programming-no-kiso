(* 8.5 *)
(* 目的: 駅名のデータ(kanji, kana, romaji, shozoku)を表す型*)
type ekimei_t =
  {
    kanji: string; (* 漢字 *)
    kana: string; (* カナ *)
    romaji: string; (*ローマ字*)
    shozoku: string; (*路線名*)
  }

(* 8.6 *)
(* 駅名のデータekimei_t を受け取り路線名,駅名（かな）を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji  ekimei_t = match ekimei_t with
  {kanji = kanji; kana = kana; shozoku=shozoku} ->
    shozoku ^ "," ^ kanji ^ "(" ^ kana ^ ")";;
(* test *)
let test8_6_1 = hyoji {
    kanji="茗荷谷";
    kana="みょうがだに";
    romaji="myougadani";
    shozoku="丸の内線";
  } = "丸の内線,茗荷谷(みょうがだに)"
