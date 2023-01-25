# これは何？

http://pllab.is.ocha.ac.jp/~asai/book/Top.html の問題実装。

## 使い方

### VSCode Remote Container を使う

- remote container の extension を入れておく
- このフォルダを VSCode で開く
- Reopen in Container を選択
- コンテナが起動。コンテナ内の VSCode で編集できるように

### (上述のやり方を推奨)直接コンテナの中に入って、ファイルを編集する方法

- docker compose build（初回・Dockerfile を変えた場合のみ）
- docker compose up -d で立ち上げ
- docker exec -it OCaml bash

## その他

コンテナ内の初期化で実行されるスクリプトは別リポジトリで管理されている
`.vscode/setting.json`内の以下の項目が該当。dotfiles を引っ張ってきて初期設定をしてくれるので、必要に応じてそちらも変更。

```
   "dotfiles.repository": "https://github.com/kuropenguin/vscode-remote-container-dotfiles.git",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "~/dotfiles/init.sh"
```
もし oh-my-zshが効いてなかった場合は、コンテナ内のCLIで `source ~/.zshrc`を実行すると効く。

## 参考にさせていただいたサイト一覧

- http://logic.cs.tsukuba.ac.jp/jikken/setup.html
- https://github.com/mk2/ocaml-dev-workspace
