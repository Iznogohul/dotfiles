#!/bin/zsh
FILES=../.config/*
for f in $FILES
do
  cp -r $f $HOME/.config/
done

  cp ../.Xresources $HOME/
  cp ../.zshrc $HOME/

