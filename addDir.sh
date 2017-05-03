# Simple script to add current working directory as a cdable_dir
# Usage: addDir.sh dir_shortname

echo "export $1=\"$(pwd -P)/\"" >> ~/.bashrc.local
source ~/.bashrc.local
