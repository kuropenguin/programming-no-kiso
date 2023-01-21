# 4.15以下でないとLSPのインストール時に落ちる
FROM ocaml/opam:ubuntu-20.04-ocaml-4.14 

# eval $(opam env)の実行をしないと ocaml not foundになるので
# 以下を参考にした
# https://stackoverflow.com/questions/72583938/redundant-eval-opam-env-needed-in-dockerfile
RUN opam env >> $HOME/.bashrc

#無くてもいいが、ちょっとターミナルの中で直接編集したいことがあるので一応(ocamlのイメージにはデフォだと入ってない)
RUN sudo apt-get update \ 
	&& sudo apt-get install vim -y

# VSCodeの拡張（ocamllabs.ocaml-platform）でコード補完するために、Language Serverを準備
# formatterも入れている
RUN opam pin add ocaml-lsp-server https://github.com/ocaml/ocaml-lsp.git \
	&& opam install ocaml-lsp-server \
	&& opam install ocamlformat

# remote container 内でも code commandが使用できるように, codeのPATHを通している(remote-cli以下にcodeがある）。
RUN code_bin_version=`ls $HOME/.vscode-server/bin/` \
	&& echo export PATH="$PATH:$HOME/.vscode-server/bin/${code_bin_version}/bin/remote-cli" >> "$HOME/.bashrc"


RUN mkdir programming-no-kiso
WORKDIR /home/opam/programming-no-kiso



