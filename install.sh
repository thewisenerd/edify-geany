# copy filetype_extensions
cp /usr/share/geany/filetype_extensions.conf ~/.config/geany

# add edify to filetype_extensions
sed -i '/Erlang/iEdify=\*updater-script\*\;'  ~/.config/geany/filetype_extensions.conf

# copy filetypes.c to filetypes.Edify
cp /usr/share/geany/filetypes.c ~/.config/geany/filedefs/filetypes.Edify.conf

# change extension
sed -i 's/extension=c/extension=\*updater-script\*\nlexer_filetype=C/g' ~/.config/geany/filedefs/filetypes.Edify.conf

# set comment
sed -i 's/comment_single=\/\//comment_single=#/g' ~/.config/geany/filedefs/filetypes.Edify.conf

echo "done!"