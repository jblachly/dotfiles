#!/bin/bash
############
# install.sh
#
# install version-controlled dotfiles to homedir
################################################

DIR=~/dotfiles
OLDDIR=~/dotfiles_old
FILES=".tmux.conf"

if [ ! -d ${OLDDIR} ]
then
	echo "Creating $OLDDIR for backup of existing dotfiles in ~"
	mkdir -p $OLDDIR
	echo "ok"
fi

# ensure we are in version controlled dotfile dir
cd $DIR

for FILE in $FILES
do
	if [ -f ~/$FILE ]
	then
		echo Backing up existing ${FILE}
		mv ~/${FILE} ${OLDDIR}/${FILE}.$(date -Iminutes)
	fi
	echo "Creating symlink from ~/${FILE} -> ${DIR}/${FILE}"
	ln -s ${DIR}/${FILE} ~/${FILE}
done
