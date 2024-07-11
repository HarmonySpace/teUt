#!/bin/bash
source "./env.sh"
source "./utils/log.sh"

# - COMPRESS AND PUSH
log $md $fgWhite "Removiendo la configuración"
mv "$ODB_NOTES_DIR/.obsidian" "$TEMP_DIR/.obsidian"
tar -czf "$TEMP_DIR/$ODB_BACKUP_NAME" -C "$ODB_NOTES_DIR" .
log $md $fgWhite "Notas comprimidas"
rclone copy "$TEMP_DIR/$ODB_BACKUP_NAME" $ODB_DRIVE_PATH
log $md $fgGreen "Subida exitosa"
mv "$TEMP_DIR/.obsidian" "$ODB_NOTES_DIR/.obsidian"
log $md $fgWhite "Restaurando la configuración"

# - DELETE TEMP
rm "$TEMP_DIR/$ODB_BACKUP_NAME"
log $md $fgWhite "Archivos temporales eliminados"
