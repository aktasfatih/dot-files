#/bin/bash
clear;

DOT_FILES=$(pwd);
echo "Running for $DOT_FILES";

Setups=( Git Homebrew );

for folder in "${Setups[@]}"
do
	echo "Setting up $folder";
	cd $folder;
	chmod +xu install.sh;
	./install.sh;
	cd ../;
	echo "------------------------------------------------";
done
