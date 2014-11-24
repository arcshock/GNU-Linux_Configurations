#!/bin/bash
#
# Purpose: Create symlinks to the dotfiles in the repository to their respective
# 	locations.

main() {
	cd home
	for file in .*; do
		is_reg_file $file
		
		if [ "$?" == 1 ]; then # seeing if the listing is a regular file
			create_symlink $HOME $file
		fi
	done
}

# Func create_symlink
# Will overwrite local files with a symlink to the repo
create_symlink() {

	# TODO - error checking on the function inputs
	directory="$1/"
	filename=$2
	path=`pwd`"/"

	ln -sf $path$filename $directory$filename
}

# Func is_reg_file
# Sees if arg is a reg file, 
is_reg_file() {
	file=$1

	if [ -f "$file" ]; then
		return 1
	else 
		return 0
	fi
}

main
