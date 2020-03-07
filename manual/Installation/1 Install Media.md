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
