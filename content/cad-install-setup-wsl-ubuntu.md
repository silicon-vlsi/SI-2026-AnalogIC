# Ubuntu 24.04 on Windows Subsystem for Linux (WSL)

Windows Subsystem for Linux (WSL) is a feature of Windows that allows you to run a Linux environment on your Windows machine. 

This is a guide for installing **Ubuntu 24.04** Linux distribution on WSL2 on Winodws 10/11.

## Setting up for WSL

- **MINIMUM WINDOWS REQUIREMENT**: Winodws 10 version 2004+ (Build 19041+) or Windows 11
- **ENABLE Virtualization (VTx) on your BIOS**: You can follow [this guide](https://www.laptopmag.com/articles/access-bios-windows-10) on how to access BIOS in a modern Windows 10 workstation/laptop.
- **ENABLE WSL and VMP** 🖱️ Navigate to `Control Panel -> Programs -> Programs and Features -> Turn Windows Features On and Off` and **Select** the following options:
  - ✅ `Windows Subsystem for Linux`
  - ✅ `Virtual Machine Platform`
- **REBOOT YOUR COMPUTER**
- **START POWERSHELL AS ADMIN** 🖱️ _Right-Click_ **Windows Start**  and select **Windows Powershell (Admin)**.
- **CHECK WSL VERSION**: 💻 Type `wsl --version` in the Powershell and make sure the WSL version shows **2.x.x.x** to make sure you have WSL2 is installed.
- **UPDATE WSL**: 💻 Type `wsl --update` in the Powershell. ⚠️ Make sure you have a good internert connection. This may take a while.
- **SHUTDOWN WSL**: 💻 `wsl --shutdown` to shutdown and apply updates.

## Installing WSL and Ubuntu 24.04

- **LIST THE AVAILABLE LINUX DISTRIBUTIONS** 💻 Type `wsl --list --online` in the Powershell. You should see the distro **Ubuntu-24.04**.
- **INSTALL WSL AND UBUNTU 24.04** 💻 Type `wsl --install -d Ubuntu-24.04` in the Powershell. ⚠️ Make sure you have a good internert connection. This may take a while.
- **START UBUNTU 24.04** 🖱️ When you click the **Windows Button**, you should see the _Ubuntu 24.04** app on the _Recently Added_ list on the left. It's good idea to pin the application to Start or Desktop for ease of access. **Click** the icon to start the Ubuntu shell.
- **CREATE (ONETIME) USERNAME AND PASSWORD**: When the linux distro is started you'll be asked to create an **username** and **password**. Keep the password safe which you need for all _root_ activities.
  - This account will be your default _user_ for the distribution and automatically sign-in on launch.
  - This account will be considered the Linux administrator, with the ability to run *sudo* (Super User Do) administrative commands.
- **UPDATE UBUNTU LINUX** 💻 Type `sudo apt update && sudo apt upgrade -y` in the **Linux Shell** to upgrade packages. It's a good idea to do this regularly. ⚠️ Make sure you have a good internert connection. This may take a while.
- **SHUTDOWN WSL**: 💻  `wsl --shutdown` to shutdown and apply updates.
- **START UBUNTU LINUX** from the Windows Start menu and now you are ready to install the EDA tools.

# Resources
 - [This Github Page](https://github.com/silicon-vlsi-org/eda-wsl2/) has lot of resource links and troubleshooting guides.

---
&copy; 2026 Silicon University, Odisha  

* * *

[OpenRAM]:              https://openram.soe.ucsc.edu/
[OpenRAMgit]:           https://github.com/VLSIDA/OpenRAM 
[OpenRAMpaper]:         https://ieeexplore.ieee.org/document/7827670/
[SCMOS]:                https://www.mosis.com/files/scmos/scmos.pdf
[NGSpice]:              http://ngspice.sourceforge.net
[NGSpiceMan]:           http://ngspice.sourceforge.net/docs/ngspice-html-manual/manual.xhtml
[Magic]:                http://opencircuitdesign.com/magic/
[Netgen]:               http://opencircuitdesign.com/netgen/


