# Arch Linux quick install guide

## Creating a bootable USB drive
On Windows: [Rufus](https://rufus.akeo.ie/)

On Linux: `sudo dd if=/Arch.iso of=/dev/sdX bs=1M`

## Installation

    # parted /dev/sda

    (parted) mklabel msdos
    (parted) mkpart primary ext4 1MiB 30GiB
    (parted) mkpart primary ext4 30GiB ..GiB
    (parted) set 1 boot on
    (parted) mkpart primary linux-swap ..GiB ..GiB
    (parted) quit

    # mkfs.ext4 /dev/sda1
    # mkfs.ext4 /dev/sda2

    # mkswap /dev/sda3
    # swapon /dev/sda3

    # mount /dev/sda1 /mnt
    # mkdir /mnt/home
    # mount /dev/sda2 /mnt/home

    # vim /etc/pacman.d/mirrorlist

    # pacstrap /mnt base

    # genfstab -U /mnt >> /mnt/etc/fstab

    # arch-chroot /mnt

    # vim /etc/pacman.conf
    |   Uncomment:
    |
    |   [multilib]
    |   Include = /etc/pacman.d/mirrorlist

    # pacman -Sy

    # pacman -S base-devel grub os-prober sudo vim git polkit i3 dmenu xterm terminator bash-completion zsh tree wget openssh xorg xorg-xinit chromium firefox atom vlc

If virtualbox (choose virtualbox-guest-modules-arch):

    # pacman -S virtualbox-guest-utils

    # VBoxClient-all

If Intel graphics:

    # pacman -S xf86-video-intel

If Nvidia graphics:

    # pacman -S nvidia nvidia-libgl

If laptop:

    # pacman -S xf86-input-synaptics

|

    # ln -sf /usr/share/zoneinfo/Region/City /etc/localtime

    # hwclock --systohc

    # echo houston > /etc/hostname

    # vim /etc/locale.gen
    # locale-gen

    # grub-install --recheck --target=i386-pc /dev/sda

    # grub-mkconfig -o /boot/grub/grub.cfg

    # passwd

Create users

    # useradd -m -G wheel,users -s /bin/bash myusername
    # passwd myusername

|

    # EDITOR=vim visudo
    |   Uncomment:
    |
    |   %wheel ALL=(ALL) ALL

    # exit

    # umount -R /mnt/home
    # umount -R /mnt

Shut down the system, remove USB drive/image used to install Arch, proceed as a user other than root.

    # zsh

    # git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

    # setopt EXTENDED_GLOB

      for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
      done

    # chsh -s /bin/zsh

    # mkdir ~/{.i3,.npm-global,code,build}

    # git clone https://github.com/shfrmn/dotfiles ~/code/shfrmn-dotfiles
    # cd ~/code/shfrmn-dotfiles
    # cp -t ~/ .xinitrc .zshrc .zpreztorc .zprofile .zlogin
    # cp -t ~/.i3 i3/*

    # cd atom
    # apm install --packages-file packages.txt

    # npm config set prefix '~/.npm-global'

    # git clone https://aur.archlinux.org/package-query.git ~/build/package-query
    # git clone https://aur.archlinux.org/yaourt.git ~/build/yaourt
    # git clone https://aur.archlinux.org/aura-bin.git ~/build/aura-bin

    # cd ~/build/package-query
    # makepkg –sri

    # cd ~/build/yaourt
    # makepkg -si

    # cd ~/build/aura-bin
    # makepkg -si

    # aura -A ttf-google-fonts-git ttf-fantasque-sans-mono
