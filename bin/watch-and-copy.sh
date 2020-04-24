#!/bin/bash

# This was used when downloading a file via chrome (that always had the same name)
# and copying it into a volume that was to be mounted inside a container. Due
# to the way chrome works a symlink wasn't possible.

# example usage: watch-and-copy.sh ~/Downloads/some_file ~/destination/file_name

SOURCE=$1
DEST=$2

SOURCE_BASE=`dirname $SOURCE`

cp $SOURCE $DEST

inotifywait -e MOVED_TO -m --format=%w%f $SOURCE_BASE | grep --line-buffered "$SOURCE" | while read -r line; do cp $SOURCE $DEST; done
