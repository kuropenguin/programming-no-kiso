# これは何？

http://pllab.is.ocha.ac.jp/~asai/book/Top.html の問題実装。

## 使い方

### 直接コンテナの中でファイル編集する場合

- docker compose build（初回・Dockerfile を変えた場合のみ）
- docker compose up -d で立ち上げ
- docker exec -it OCaml bash

## OCaml の実行

コンテナ内で操作している前提

## 対話的に実行する

- `ocaml`コマンドで対話モード立ち上げ
- `hogehoge;;` で hogehoge を実行(`;;`が区切り文字)
  - example: `1+2*3;;`
- `#quit;;` で対話モードから抜ける

### ファイルを読み込ませて実行する

- `ocaml`コマンドで対話モード立ち上げ
- `#use hogehoge.ml`で読み込ませるフィルを指定して実行
  - 絶対パスで指定しても良い
- `#quit;;` で対話モードから抜ける

## 参考にさせていただいたサイト一覧

- http://logic.cs.tsukuba.ac.jp/jikken/setup.html
- https://github.com/mk2/ocaml-dev-workspace
