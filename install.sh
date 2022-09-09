#/bin/bash
clear;

usage() { echo "Usage: $0 [-a] [FOLDER-NAMES]" 1>&2; exit 0; }

DOT_FILES=$(pwd);
echo "Running for $DOT_FILES";

# The folders we want to go through
dir=( "$@" )

[ ${#dir[@]} -eq 0 ] && usage;

# Set default values with -a
[ ${#dir[@]} -eq 1 ] && ${dir[0]} eq '\-a' && dir=( Git Homebrew );

echo ${dir[@]};
exit 1;


for folder in "${dir[@]}"
do
	echo "Setting up $folder";
	cd $folder;
	chmod +xu install.sh;
	./install.sh;
	cd ../;
	echo "------------------------------------------------";
done
