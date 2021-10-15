# Before We Begin

## Distributions
There are many Linux distributions (distro). Each distribution is like a version of Linux, offering it's own features and uses. Some distributions are more feature heavy, while others are designed to be fast. 
  
We will be using *Manjaro* for our guide. Manjaro is a Arch-based distro (based on Arch Linux) that provides easy installation and more sensible defaults. Compared to other distributions, it has a great package manager (for downloading trusted software), it is easily customizable (Arch-based) and have an easy installation compared to Arch Linux.
  
For more information on different distributions, visit [itsfoss](https://itsfoss.com/best-linux-distributions/). However, keep in mind that no distribution is the most superior. All distributions have it's own advantages and disadvantages. [1]

## Desktop Environment
This guide will assume an installation with the KDE Plasma and i3 Desktop Environment (DE). Desktop environments provide a group of software that creates the "look" of an system. Oftentimes setting logos, interfaces, and more. A DE is not as important as choosing a Linux Distro, but it does effect the user comfort.
  
Generally, a good choice for a DE would be KDE, Gnome or xfce. However, there are many other choices out there.

## Requirements
Linux itself is an extremely resources light, it is capable of running on almost any hardware. Also, we will be running a lightweight distribution and DE, so really you can transform any computer into a Linux machine. Although be aware that if you do use a slow computer, some processor intensive tasks such as blurring background can cause severe lag.
  
Also, when using Apple computers, some additional settings and configurations may need to be installed. Extra time may need to be put in to ensure a successful installation.

## References
1. [Distrowatch](distrowatch.com) is a website dedicated to different distros of Linux. Have a look and see what you like!

# Installation Media

## Requirements
- extra USB (8G) 
- Internet Access

## Disk Image
To install Linux on a computer, we must first obtain it's _disk image_. A disk image is a file which that you use to install Linux with [1]. We can normally find the disk image of your chosen Linux distribution from the official website.
  
In our case, we will be installing Manjaro Linux. We can grab it's disk image from [it's official website](https://manjaro.org/download/). Select your distro[2] and download the disk image. The disk image should be in a _.iso_ file.

## Live CD
Nowadays, Linux distros generaly opt for a Live CD as an installation environment. A Live CD environment is stored on a USB (or CD if you are old-school) and allows your computer to temporary boot into a Linux distribution. Then, you can have a look around the distro or install it. We are going to install Manjaro by creating a Live CD.
  
To create said Live CD, we will burn the Disk Image into a USB. You will need a USB etcher. There are many software available that does this job, I recommend [Balena Etcher](https://www.balena.io/etcher) (it is compatible with both Windows, Mac and Linux). Go ahead and install the software and burn the Live CD. Burning the Live CD is not a trivial task that is easily described (an accident click can result in a wiped computer). To be safe, read [an article](https://www.techsolveprac.com/manjaro-flash-drive-balena-etcher-windows/) about burning a Live CD.

## Installation
Now that we have the USB flashed, go ahead and insert your USB into the computer, and shutdown.
  
The next step is crucial. In order to boot from the USB, we have to get the computer to recognize it. Hold the boot list button on your computer. For Apple products, hold option when booting. For Lenovo computers, hold the F12 button. For Dell computers, repeatedly tap the F12 button. For MSI systems, hold F11. Select and boot from your USB.[3]

## References
1. Note, there are other uses of disk images, you can learn more about them [here](https://www.wisegeek.com/what-is-a-disk-image.htm).
2. Read _Before We Begin_ to learn about Linux distros.
3. For a comprehensive list of the boot button for all computers, checkout [this website](https://www.windowspasswordsrecovery.com/windows-tips/how-to-set-bios-to-boot-from-the-usb-flash-drive.html)

# GUI Installation
You have just sticked the USB in your computer, and booted into Linux. In front of you is a brilliant new world! Here, you can mess around and see what everything look like. Try some of the tools, fiddle around with the folders and files. This is your last change before you commit and install Linux.
  
After you are done having a look around, follow the installtion instructions and install Linux! [1]

## References
1. Since every distro have a different installation process, it's best to just follow the instructions. If you have any questions, Google is your best friend!

# Architect Installtion

**Requires Decent Internet Connection**
  
Manjaro Architect is an alternate installation method that offers customizability. Unlike the other Manjaro disk images, Manjaro Architect has a TUI[1] installation process. It is quite advance, as you have to manually perform the base operations of installing Linux. However, don't worry. Manjaro provides you will all the necessary tools. With a bit of patience, anyone can do it. You will also learn quite a lot about Linux, which is great! This knowledge comes in handy when something break. Since you seated it up in the first place, you know how to fix it!
  
Since installing via Manjaro Architect is no trivial process, here's a [detailed article](https://forum.manjaro.org/t/installation-with-manjaro-architect-iso/20429) written by the Manjaro Team on how to proceed with your installation!


## References:
1. TUI, CLI, and GUI. What's the difference between them? CLI (Command Line Interface) refer to an application that only displays text. You interact with them by sending commands. TUI (Text User Interface) is a "upgraded" version of the CLI. TUI applications display only text. But the twist uses special characters to create a _menu_. You usually interact with TUIs using the arrow keys and the enter key. GUI (Graphics User Interface) refers to an application that display windows and has clickable buttons. In the modern world, most applications in Windows and MacOS are GUIs. You normally interact with them with the mouse. 

# Post Installation

## Tools

So now that we are done with installing Linux, we need to install some tools to help you with the everyday task. Unlike Windows and Macs, Linux is not as mainstream. Although support is getting better, many tools and applications you can see on Windows (and Mac) is not found on Linux. But that doesn't mean that Linux is a wasteland devote of any tools. In fact, some many argue Linux has more and better tools for everyday uses. 
  
The folder _Tools_ will show you several useful applications that will aid you in doing your everyday tasks. 

## Shell Scripting

Although Linux is not mainstream on personal computers, many server computers around the world actually runs on Linux. Why? Because Linux is inherently powerful. The openness of it's system and well designed structure allows for a customizability that no operating system can match. You can leverage this to your advantage by learning how to use the _"terminal"_. The terminal (or more accurately, the shell) is a place where commands string together, allowing you to do anything you want. You can learn more about it [here](https://ryanstutorials.net/linuxtutorial/).

## Ricing

Due to Linux being such a customizable system, there are many people who took it upon themselves to make their computer _truely there's_. On Linux, this is commonly referred to as **Ricing**. Unlike other operating systems, Linux provide you with the ability to tear apart each layer of your machine. From your Desktop Environment to your Sound Server. Allowing you to tweak each individual settings to perfection. Many people change the color, appearance and logo of their computers. Some add additional programs and key binds. The sky is the limit. You can have a look at [this subreddit](https://www.reddit.com/r/unixporn) and see what's possible.

# Linux
For many students, Linux has always been a name buzzing around the Internet. Often heard of, but something in the distance. The untouchable and the invisible. This is most likely because the word *Linux* is associated with nerds and computer geeks. Often perceived as a difficult, hard to use Operating Settings. However, as Linux develops, **this is simply not the case.** 
  
This guide aims to provide a easy starting point for willing students to installing Linux on your computer.

## Why Use Linux?
There are many benefits of using Linux as a _consumer_.  

### Price
Most well known OSes are commercial. Meaning that companies produce software and create the operating system for the end user. However, this means a lot of the time, these software cost money. For example, Microsoft requires purchasing a license for the installation of windows, Adobe requires a monthly subscription to gain access to their suit of softwares. 
  
Linux on the other hand is open sourced. This means that it is made by the community, for the community. This means that the majority of programs are created with the indention of sharing in mind. This means that the softwares are usually free. Although it is not as professional as their Windows counterparts, Linux software can also be quite advance. Drawing applications like Krita and GIMP can replace Adobe software (at a non professional level) quite easily. Free video editors such as Olive is catching up to its paid rivals. Using Linux means saving a lot of money, while still retaining high quality software.

### Fast
Linux also have a strong focus on efficiency. Programs are designed to be modular, work together and as light as possible. 
- lightweight
- improves battery
- support for old hardware (due to little processing power needed)

### Support
- Lots of Help Online (From many active forums members)
- well documented (great wikis online if you are willing to read them)

### Stability
- safe (less virus)
- less breakdowns versus other Operating Systems.

### Easy Management
- Package Managers (allows for easy installation)
- backup (secure)
- dotfiles (allow for easy set up and advance setting tweaking)

### Personal
- Own configuration (high amounts of reconfigurability)

## Special Note
**Learning Linux is not a one day task:** you will not be able to do everything in a day. To fully understand and use Linux, a lot of time is needed to be invested into learning and research. However, *the benefits outweighs the time spent*. Refer to the previous section (*Why Use Linux*) or reference.

## Further Research
This guide assumes some basic knowledge on computers and the shell. Since this is a compacted guide explaining a large amount of information, further research is required to familiarize yourself with the large variety of software provided. The guide will, however provide reading material or good sources. 

### Wiki and Man Pages
When there is a lack of information, always look to the **man pages**. They provide a lot of important information (`man [program]` or `[program] -h`). When the *man pages* aren't enough, one can always look to Wikis. The [Arch Linux Wiki](wiki.archlinux.org) and [Manjaro Wiki](wiki.manjaro.org) can help greatly.

### Community
Linux has a growing community that is willing to help. Forums like [reddit (r/linux)](https://www.reddit.com/r/linux/) and [Manjaro Forum](forum.manjaro.org) can help greatly. Just remember to read the guidelines before posting an questions. No one likes to answer dumb questions!

### Google
Last but not least, if you have any problems, you can always Google them up. There is a high chance that someone has already asked the same question as you online, or a website wrote a guide about it.
