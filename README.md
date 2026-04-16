# Theme preview
![Preview demo image](https://github.com/MartinKulic/grub-theme-Nyarch/blob/main/theme_demo.png?raw=true)

## Install instruction:
- make install.sh executable by
      chmod +x install.sh
- run install.sh with elevated privilages and dessired arguments
      sudo ./install.sh

## Building package (Arch based systems only):
If you prefer it is possible to install theme through pacman package manager.

- inside extracted source run
      makepkg -s
- install builded package by
      pacman -U grub-theme-Nyarch*.pkg.tar.zst

## Manual install:
- copy ArchChan-theme to /usr/share/grub/themes
- edit GRUB config /etc/default/grub
	- Add / modify GRUB_THEME entry to point to theme.txt
      in this case
      GRUB_THEME=”/usr/share/grub/themes/ArchChan-theme/theme.txt”
- regenerate GRUB ( bare in mind this command may differ base of on distribution )
	 grub-mkconfig -o /boot/grub/grub.cfg



# After install:
!!!
In case image appears deformed or not to your liking consider editing image elemet atributes (top / left) in theme.txt after installation. theme.txt should be located inside /usr/share/grub/themes/ArchChan-theme directory.
!!!

### THANKS TO...
Grub theme bassed on:
https://github.com/adnksharp/CyberGRUB-2077

Arch-chan art by: RavioliMavioli  | https://krita-artists.org/t/archlinux-chan/49206
