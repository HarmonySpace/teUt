#!/bin/bash
source "./env.sh"
source "./utils/color.sh"
source "./utils/log.sh"
source "./utils/preview.sh"

# - FORM
color $md $fgBlue $bgBlack "Nombre de la aplicación"
read NAME
color $md $fgBlue $bgBlack "Descripción de la aplicación"
read COMMENT
color $md $fgBlue $bgBlack "Dirección del ejecutable"
read EXEC
color $md $fgBlue $bgBlack "Dirección del ícono"
read ICON
color $md $fgBlue $bgBlack "Categoría de la app"
read CATEGORY

# - SET VALUES
# -- File name
FILENAME="$NAME.desktop"
log $md $fgWhite "Nombre definido -> $FILENAME"

# - DESKTOP LINK
echo "[Desktop Entry]" >$FILENAME
echo "Version=$CDL_VERSION" >>$FILENAME
echo "Name=$NAME" >>$FILENAME
echo "Comment=$COMMENT" >>$FILENAME
echo "Exec=$EXEC" >>$FILENAME
echo "Icon=$ICON" >>$FILENAME
echo "Terminal=$CDL_TERMINAL" >>$FILENAME
echo "Type=$CDL_TYPE" >>$FILENAME
echo "Categories=$CATEGORY" >>$FILENAME
log $md $fgWhite "Archivo creado"

# - DESKTOP DIR
# - Move to dir
mv $FILENAME $CDL_DIR/$FILENAME
log $md $fgWhite "Archivo reubiado"
# - Print dir and file
color $md $fgGreen $bgBlack "Se ha creado el enlace de escritorio"
ls ~/.local/share/applications | grep $FILENAME
preview $CDL_DIR/$FILENAME b

