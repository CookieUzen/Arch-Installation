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
  
Set up the language/local of the system:
```bash
vim /etc/locale.gen # Or use your chosen EDITOR
```
Uncomment the needed locals. If you are using an English based system, uncomment `en_US.UTF-8` and `UTF-8`.
```bash
locale-gen # Generate locales
```
Assign your local in `/etc/locale.conf`
```bash
echo "LANG=en_US.UTF-8" >> /etc/locale.conf # Or use your chosen locales
```
  
Make your keyboard layout persistent by editing `/etc/vconsole.conf `
```bash
/etc/vconsole.conf
echo "KEYMAP=de-latin1" >> /etc/vconsole.conf # Or use your chosen keyboard layout
```
  
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
  
Lastly, we need to generate the Initramfs.
```
mkinitcpio -P
```
  
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
EDITOR=vim; visudo // Replace EDITOR with your chosen editor
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
