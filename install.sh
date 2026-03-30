#!/bin/bash

#USE_BARK_ICON_OPTION="-bark-logo"

source ./grub-theme-Nyarch.install

THEME_HEAD_PATH="./temp/theme_head.txt"
THEME_TAIL_PATH="./temp/theme_tail.txt"
THEME_TXT_PATH="./ArchChan-theme/theme.txt"
GRUB_CNFG_BACK="/etc/default/grub.backup"

#Check arguments
if [ "$#" -ge 1 ]; then
  echo "got 1 or more arguments"
  if [[ "$1" == $USE_BARK_ICON_OPTION ]]; then
    echo "$USE_BARK_ICON_OPTION = logo and distribution name will be changed"
  fi
fi

# Check for root
if [ "$EUID" -ne 0 ]; then
  echo -e "\n\033[1;31m! Installation unsuccesfull !\033[38;5;166m\n Required root acces to modifie /boot !\n\033[0m\033[1m  Please rerun as sudo\033[0m"
  exit 1
fi

# If theme dir does not exists it will be created
if [ ! -d "${THEMES_DIR}" ]; then
  mkdir -p "${THEMES_DIR}"
  echo "Creaded $THEMES_DIR"
else
  echo "$THEMES_DIR already exists"
fi

# Compose theme.txt
echo "Seting theme parameters"
resolution=$(get_primary_resolution) 
calculate_img_percentage "$resolution"; 

echo " Image dim: top: $IMG_TOP; left: ${IMG_PER_LEFT}%; height: ${IMG_PER_HEIGHT}%"
# Modifie theme.txt
compose_theme_txt


# Copy theme
echo "Copying theme to $THEMES_DIR"
cp -r "./${THIS_THEME_NAME}" $THEMES_DIR > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Copyed succesfully"
else
  echo -e "\n\033[1;31m! Installation fail !\n\033[38;5;166m Could not copy $THIS_THEME_NAME to $THEMES_DIR\n\033[0m  Make sure you are running command as root or from correct directory\n"
  exit 1
fi

# Modifie GRUB config
echo "Modifiing GRUB config"
 # back up GRUB conf
cp -an $GRUB_CNFG $GRUB_CNFG_BACK

if grep -q "^GRUB_THEME=" "$GRUB_CNFG"; then
  sed -i "s|^GRUB_THEME=.*|GRUB_THEME=\"${THEMES_DIR}/${THIS_THEME_NAME}/theme.txt\"|" "$GRUB_CNFG"
  else
    echo -e "\nGRUB_THEME=\"${THEMES_DIR}/${THIS_THEME_NAME}/theme.txt\"" >> "$GRUB_CNFG"
fi

# Update grub config
echo -e "Updating grub..."
if has_command update-grub; then
  update-grub
elif has_command grub-mkconfig; then
  grub-mkconfig -o /boot/grub/grub.cfg
elif has_command grub2-mkconfig; then
  if has_command zypper; then
    grub2-mkconfig -o /boot/grub2/grub.cfg
  elif has_command dnf; then
    grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
  fi
fi



echo -e "\n\033[1;32mDONE\033[0m"   
exit 0

