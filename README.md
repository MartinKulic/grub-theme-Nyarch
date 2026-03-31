# I N S T A L L   I N S T R U C T I O N :
- make install.sh executable by
      chmod +x install.sh
- run install.sh with elevated privilages and dessired arguments
      sudo ./install.sh

# B U I L D I N G   P A C K A G E (Arch based systems only):
If you prefer it is possible to install theme through pacman package manager.

- inside extracted source run
      makepkg -s
- install builded package by
      pacman -U grub-theme-Nyarch*.pkg.tar.zst

# M A N U A L   I N S T A L L :
- copy ArchChan-theme to /usr/share/grub/themes
- edit GRUB config /etc/default/grub
	- Add / modify GRUB_THEME entry to point to theme.txt
      in this case
      GRUB_THEME=”/usr/share/grub/themes/ArchChan-theme/theme.txt”
- regenerate GRUB ( bare in mind this command may differ base of on distribution )
	 grub-mkconfig -o /boot/grub/grub.cfg



# A F T E R   I N S T A L L :
!!!
In case image appears deformed or not to your liking consider editing image elemet atributes (top / left) in theme.txt after installation. theme.txt should be located inside /usr/share/grub/themes/ArchChan-theme directory.
!!!

# THANKS TO...
Grub theme bassed on:
https://github.com/adnksharp/CyberGRUB-2077

Arch-chan art by: RavioliMavioli  | https://krita-artists.org/t/archlinux-chan/49206
