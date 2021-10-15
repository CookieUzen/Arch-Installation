# Advance Installation

_So, you did it._
  
Installed Linux with the installation guide. It wasn't that bad now, was it? Care for a challenge? The guide below will go through installing Linux with one of the more difficult processes. We will be installing _Arch Linux_, a flexible distribution that Manjaro is based on. Instead of having a GUI installer, or even a TUI installer (like in Manjaro Architect) [1], you have to do everything manually. Typing in commands into a terminal. Although scary at first, it gets easier. Installing Arch Linux manually teaches you many valuable lessons about Linux. Arch Linux is also a great distribution overall. It's hands on approach gives you freedom in your choice of software. Whenever you have trouble, you can visit the Arch Wiki. Arguably the best well maintained wiki on Linux. Heck, I am writing this guide on an Arch Linux machine.
  
I have to warn you though, it's not easy. I myself been through many failed installation. But the reward is immense. 

## Footnotes
1. Actually, Manjaro Architect is based off the famous [Architect](http://landoflinux.com/linux_install_architect_linux.html) installer for Arch Linux. There is also the [Zen Installer](https://github.com/spookykidmm/zen_installer).

# Understanding the Components
A Linux system is made out of many building blocks. You should have at least a light grasp before proceeding.
  
Note, this document only goes through the programs that are more important to an installation. Many important programs that run in the background (such as daemons) aren't covered here.

## Kernel
The kernel is the bones of Linux. [1] It manages the CPU, controls the USB ports and read the hard disks. It is the layer between software and hardware.
  
There are many versions of the Linux kernel. Such as the LTS (Long Time Support) and the Hardened (security focused kernel). Unless you are running a server or using a computer with special hardware, there really isn't much need to mess around with the kernel. The vanilla kernel is enough. 

You can learn more about the kernel [here](https://www.howtogeek.com/howto/31632/what-is-the-linux-kernel-and-what-does-it-do/) and [here](https://wiki.archlinux.org/index.php/Kernel).

## Bootloader
The bootloader is what loads the Linux Kernel when your computer boots up. Generally, GRUB is a good choice for the default bootloader. If needed, there are other alternatives. Such as rEFIND (commonly used to dual boot with Mac devices) and Clover (commonly used to create Hackintoshes [2]). 
  
Arch Linux requires you to manually install a bootloader. Slightly annoying if you didn't know. Especially considering steps to install a bootloader is not explicitly written in the Arch Linux Install Guide [3].

## Shell
The shell is a program that allows you to interact with the computer. When people talk about the _terminal_, they are most likely referencing to a terminal emulator, which runs a shell. There are many different shells available. I will list some of the more common shells:  
- sh (Bourne Shell)  
- bash (Bourne Again Shell)
- csh (C Shell)  
- ksh (Korn Shell)  
  
The Bourne Shell is the oldest, and one of the most wide spread shells. It has since been replaced by BASH, but Bourne Shell is kept around for compatibility reasons. BASH is the Bourne Shells with some improvements. It is the standard shell for modern day Linux distros [4]. To fully understand and use Linux to it's fullest, it is highly suggested to learn how to use BASH. For example, to install Arch Linux, we will be interacting with BASH fully.

## Display Server
The Xorg Server (Commonly referred to as _X_) is one of the most popular display servers. [5] It provides the user a graphical interface. Without X, Linux is unable to display pictures and videos. Without and Xorg Server, Linux will only drop you into a shell. 
  
Generally many programs that creates windows or displays non text objects (e.g. pictures) requires a display server to run in.

## Desktop Environment
A Desktop Environment builds upon the Display Server. It creates GUI user environment for the users to interact in. They are what change the appearance of desktops and provides you ways to interact with programs. There are many different Desktop Environments. The list below will show some popular choices:  
- Gnome (A modern Display Manager that is default on many Linux Distros)
- MATE (a fork of the now deprecated GNOME 2 Desktop Environment)
- KDE (a modern, slick Qt based Desktop Environment)
- XFCE (a light weight Desktop Environment)
  
## Window Manager
A Window Manager is an interesting twist to a Desktop Environments. Instead of using a mouse control and manipulated your computer, Window Manager allows you to directly control your computers with keyboard shortcuts.
  
It is design for people who mainly interact with terminals and CLIs. Generally, they are minimalistic but provides much customizability and control. You can imagine it as "tmux" for your Desktop Environment. 
  
Popular Window Manager includes:
- i3 (most common window manager with easy configurations)
- dwm (A Minimalistic, Suckless Window Manger)
- bspwm (A modular Window Manager that allows for extreme customization)
- openbox (A configurable, modern Window Manger)

## Display Manager
A display manager provides a graphical interface to login to your Desktop Environment/Window Manager. Many Desktop Environments includes one in their installation. While Window Managers generally requires you to install your own. Some common display managers are:
- Lightdm (a light weight, multiple backend Display Manager)
- GDM (Default Display Manager for Gnome)
- sddm (Default KDE Display Manager)

## Compositor
Many modern day Desktop Environments looks good. It's windows have slick edges, transparent background with a smudge of blur on top. This is the job of the compositor. The compositor takes in windows from the Xorg Server, and puts the windows in the right place, with the right settings, and the right look. 
  
Different Desktop Environments use different compositors. Some common ones are:
- compton/picom
- compiz
- kwin (for KDE)
- weston (for Wayland)

## Text Editor
Unix is built around text. Most programs receives text input and output text. Programs are written in plain text, documents are written in text. A good text editor will greatly benefit you in pursuing everyday task with a higher efficiency. 
  
Below are some common text editor.
- Vi/Vim (one of the most common text editor)
- Emacs (a highly configurable text editor)
- Nano (an easy to use editor)
  
As a suggestion, it is highly advised to learn how to use Vi. Vi is present in almost all Linux distributions. In case you have to perform maintenance on a computer that you have not set up, Vi is most likely there. 
On a side note, Vi/Vim users and Emacs users have a ferrous debate on which editor is better. It is often referred to as [The Holy War](https://www.linux.com/news/emacs-vs-vi-endless-geek-holy-war/).


## Footnotes
1. In fact it may even be considered as Linux itself. The official name for Linux is _GNU/Linux_. This is because Linux is the kernel, and uses tools created by the GNU Foundation. Together, they create the operating system we know of today.  
2. A Hackintosh is a non Apple computer that is "hacked" to run MacOS. Although not Linux, MacOS share many similarities with Linux and OpenBSD.  
3. Guess what, Arch Linux have a long (and in dept) guide/wiki on it's installation. You can find it [here](wiki.archlinux.org/index.php/Installation_Guide)  
4. Although some distros experiments with zsh. An improved BASH shell that adds many quality of life changes. Arch Linux is one of these distros.  
5. Probably since there is no other alternatives. Xorg is old. However, a new "contender" -- Wayland is under development.

# Installation Media
To start off our installation, we will be flashing a usb with the Arch Linux ISO. Note, this guide does not assume dual boot.
  
I will assume that the reader has already installed Linux at least once, and understand the basics. Thus, the proceeding steps may involve code and that may have dangerous side effects (such as corrupt data). Always backup your data before installing something new or performing a new operation. Also, an complete installation of Arch Linux is not as easy as an GUI interface. Thus, I recommend reading through the [Arch Linux Install Wiki](https://wiki.archlinux.org/index.php/Installation_guide) and using the document below as a general outline or README.

## Flashing the Disk
You can obtain a copy of the Arch Linux ISO disk from [here](https://www.archlinux.org/download/). Use [the tool](https://wiki.archlinux.org/index.php/USB_flash_installation_media#Using_dd) `dd` to quickly flash a USB disk. Then, quickly boot into the Arch Linux install media.

## Internet
Since Arch Linux is a net install distro, you will need to connect to the Internet to download packages. The easiest way to connect to the Internet is to plug in an Ethernet cable. Click [here](https://wiki.archlinux.org/index.php/Installation_guide#Connect_to_the_internet) to learn more.
  
To check your Internet, ping a website:  
```bash
ping archlinux.org
```

## Partition Disk
A typical Linux install generally uses 3 partitions:  
- Boot (1G)
- Storage (Rest of Disk)
- Swap (size of RAM)
  
[Partition your Hard Drive](https://www.tecmint.com/arch-linux-installation-and-configuration-guide/) with `cfdisk`. We will assume Boot is on sda1, Storage is on sda2, and Swap is on sda3.
  
Then, format your drives to the right format.
```bash
mkfs.ext4 /dev/sda2 # Main Storage

mkswap /dev/sda3 # Swap
swapon /dev/sda3
```
  
Lastly, mount your main partition to `/mnt`.
```bash
mount /dev/sda2 /mnt
```
  
To list and check your partitions, run:
```bash
fdisk -l
```

## Pacstrap
First, we will update the mirrorlists.
```bash
vim /etc/pacman.d/mirrorlist # Or replace vim with your chosen editor
```
Uncomment all mirrors you want (typically mirrors in your country helps increase your download speeds).
  
Now, we will install the Base package, which includes the important programs and the Linux kernel.	

```bash
pacstrap /mnt base base-devel linux linux-firmware
```

## Fstab
In order for Linux to recognize your hard drive, use `genfstab` to create a Fstab file.
```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

## Chroot 
Now, we need to chroot into our installation and configure the system.
```
arch-chroot /mnt 
```
## Timezone
Set up your timezones:
```bash
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
# or
tzselect 
```
  
Update the system clock in the process.
```bash
hwclock --systohc
```

## Language/Locale
Set up the language/locale of the system:
```bash
vim /etc/locale.gen # Or use your chosen editor
```
Uncomment the needed locals. If you are using an English based system, uncomment `en_US.UTF-8` and `UTF-8`.
```bash
locale-gen # Generate locales
```
Assign your local in `/etc/locale.conf`
```bash
echo "LANG=en_US.UTF-8" >> /etc/locale.conf # Or use your chosen locales
```
## Keyboard Layout
Make your keyboard layout persistent by editing `/etc/vconsole.conf `
```bash
/etc/vconsole.conf
echo "KEYMAP=de-latin1" >> /etc/vconsole.conf # Or use your chosen keyboard layout
```

## Hostname
Configure your network hostname by editing `/etc/hostname`
```bash
echo "myhostname" >> /etc/hostname # Replace myhostname with your hostname
```
In general, your hostname can be whatever you want. It is your computer's name on the network.
  
And also create the hosts file. Add the following to `/etc/hosts` (and replace myhostname with your hostname)
```bash
127.0.0.1	localhost
::1		localhost
127.0.1.1	myhostname.localdomain	myhostname
```
## Initramfs
Lastly, we need to generate the Initramfs.
```
mkinitcpio -P
```

## Root Password
Change the root password of the computer by executing:
```bash
passwd
```

## Grub Install
To boot Arch Linux on startup, we need to install GRUB, a bootloader. Install the necessary packages with pacman:
  
We are assuming the EFI Boot Partition is on `/dev/sda1`
```bash
mkdir /boot/efi
mount /dev/sda1 /boot/efi

grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
```
  
For more details, click [here](http://fasterland.net/how-to-install-grub-on-arch-linux-uefi.html).
  
## Users
We need to add some users into the computer. Using root to interact with the computer is a bad idea!
```bash
useradd -m -G wheel username # replace username with your username
```
  
Now, we need to let the `wheel` group have `sudo` privileges. 
```bash 
EDITOR=vim; visudo # Replace vim with your chosen editor
```
Uncomment `%wheel ALL=(ALL) ALL` at line 82. This allows the wheel group to have sudo privileges.

Learn more about sudoers and users [here](https://linuxhint.com/add_users_arch_linux/).	

## WiFi 
An minor incontinence of Arch Linux is that it does not install a WiFi manager automatically. So it is advise to do when booted in the USB.
```bash
pacman -S NetworkManager
systemctl enable NetworkManager # Start Network Manager on boot.
```
  
To connect to WiFi, run `nmtui`. Learn more about NetworkManager [here](https://wiki.archlinux.org/index.php/NetworkManager)

## AUR Helper
The AUR is a user repository where people can install packages from. Many third-party packages are located there. It is quite important to have a working AUR helper to install packages in the AUR. 
```bash
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si
```

## Reboot
Now that you are done with the installation, wake a deep breath. And reboot. You did it.
```bash
exit # To exit chroot
reboot
```
