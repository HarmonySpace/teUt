#!/bin/bash
source "./env.sh"
source "./utils/log.sh"

# - COMPRESS AND PUSH
log $md $fg "Removiendo la configuración"
mv "$ODB_NOTES_DIR/.obsidian" "$TEMP_DIR/.obsidian"
tar -czf "$TEMP_DIR/$ODB_BACKUP_NAME" -C "$ODB_NOTES_DIR" .
log $md $fg "Notas comprimidas"
rclone copy "$TEMP_DIR/$ODB_BACKUP_NAME" $ODB_DRIVE_PATH
log $md $fg "Subida exitosa"
mv "$TEMP_DIR/.obsidian" "$ODB_NOTES_DIR/.obsidian"
log $md $fg "Restaurando la configuración"

# - DELETE TEMP
rm "$TEMP_DIR/$ODB_BACKUP_NAME"
log $md $fg "Archivos temporales eliminados"
