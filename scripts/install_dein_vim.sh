DOWNLOAD_PATH=tmp/dein_vim

rm -fr $DOWNLOAD_PATH
mkdir -p $DOWNLOAD_PATH
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${DOWNLOAD_PATH}/installer.sh
sh ./${DOWNLOAD_PATH}/installer.sh ~/.vim/bundles
