#!/bin/bash

code_bin_version=`ls $HOME/.vscode-server/bin/`
echo export PATH="$PATH:$HOME/.vscode-server/bin/${code_bin_version}/bin/remote-cli" >> "$HOME/.bashrc"

