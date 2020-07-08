#!/usr/bin/env bash

app=shellc

echo "$app installer"
echo "will make '$app' command accessible from anywhere in your home."

bin="$HOME/bin"
dotbin="$HOME/.bin"

if [ ! -d "$bin" ]; then
	if [ ! -d "$dotbin" ]; then
		read -p "Your home has no 'bin' dir. Create one ? y/n : " rsp
		if [ $rsp = 'y' ]; then
			echo "Creating $bin"
			mkdir -p "$bin"
			echo "Adding $bin to PATH and bashrc"
			echo 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc && source $HOME/.bashrc
		else
			echo "Aborting.."
			exit 0
		fi
	else
		bin="$dotbin"
	fi
fi

echo "Adding $app to $bin and chmod'ing +x"

if [ -f "$bin/$app" ]; then
	read -p "$bin/$app already exists. Replace ? y/n : " rsp
	if [ $rsp = 'y' ]; then
		rm "$bin/$app"
	else
		echo "Aborting.."
		exit 0
	fi
fi

ln -f $app "$bin/$app"
chmod +x "$bin/$app"