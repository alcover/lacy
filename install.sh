#!/usr/bin/env bash

echo "runc installer"
echo "will make 'runc' command accessible from anywhere in your home."

bin="$HOME/bin"


if [ ! -d $bin ]; then
	read -p "OK to create dir $bin and add it to PATH ? y/n " rsp
	if [ $rsp = 'y' ]; then
		mkdir -p $bin
		echo 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc && source $HOME/.bashrc
	else
		echo "Aborting.."
		exit 0
	fi
fi

ln runc "$bin/"