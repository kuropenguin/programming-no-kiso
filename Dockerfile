FROM ocaml/opam:ubuntu-22.10-ocaml-5.1

# eval $(opam env)の実行をしないと ocaml not foundになるので
# 以下を参考にした
# https://stackoverflow.com/questions/72583938/redundant-eval-opam-env-needed-in-dockerfile
RUN opam env >> /home/opam/.bashrc

#無くてもいいが、ちょっとターミナルの中で直接編集したいことがあるので一応(ocamlのイメージにはデフォだと入ってない)
RUN sudo apt-get update
RUN sudo apt-get install vim -y

