#!/bin/bash
source "./env.sh"
source "./utils/color.sh"

# - FORM
color $md $fg $bg "Nombre de la aplicación"
read NAME
color $md $fg $bg "Descripción de la aplicación"
read COMMENT
color $md $fg $bg "Dirección del ejecutable"
read EXEC
color $md $fg $bg "Dirección del ícono"
read ICON
color $md $fg $bg "Categoría de la app"
read CATEGORY

# - SET VALUES
# -- File name
FILENAME="$NAME.desktop"

# - DESKTOP LINK
echo "[Desktop Entry]" >$FILENAME
echo "Version=$VERSION" >>$FILENAME
echo "Name=$NAME" >>$FILENAME
echo "Comment=$COMMENT" >>$FILENAME
echo "Exec=$EXEC" >>$FILENAME
echo "Icon=$ICON" >>$FILENAME
echo "Terminal=$TERMINAL" >>$FILENAME
echo "Type=$TYPE" >>$FILENAME
echo "Categories=$CATEGORY" >>$FILENAME

#move to desktop links
mv $FILENAME $HOME/.local/share/applications/$FILENAME

#print final message
color $md $sc $bg "Se ha creado el enlace de escritorio"
ls ~/.local/share/applications | grep $FILENAME

