#!/bin/bash

METADATA="/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop"
THEME_DIR="/usr/share/sddm/themes/sddm-astronaut-theme/Themes"

# Récupérer la liste des fichiers *.conf
themes=("$THEME_DIR"/*.conf)

# Choisir un fichier aléatoire
random_file="${themes[RANDOM % ${#themes[@]}]}"

# Extraire juste le nom du fichier
random_theme=$(basename "$random_file")

# Remplacer uniquement la ligne ConfigFile
sed -i "s|^ConfigFile=.*|ConfigFile=Themes/${random_theme}|" "$METADATA"

echo "🎨 Thème SDDM choisi : $random_theme"
