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
