#!/bin/bash
source "./utils/term_colors.sh"

# enviroment vars
# - COLORS
# -- modifiers
md=1

# - GLOBALS
TEMP_DIR="/tmp"

# - SCRIPTS
# -- Create desktop link
# --- Default vars
CDL_VERSION=1.0
CDL_TYPE="Application"
CDL_TERMINAL=false
CDL_DIR=$HOME/.local/share/applications
# -- Obsidian Drive Backups
# --- Default vars
ODB_NOTES_DIR="$(echo $HOME)/Documents/notes"
ODB_BACKUP_NAME="ob_$(date +%Y%m%d%H%M%S).tar.gz"
ODB_DRIVE_PATH="chava:ob"


