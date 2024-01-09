# Installation guide for windows:

# Here are the steps-by-step installations to install Ubuntu 20.04.6 using VMWare on a Windows System:
# Requirements:
-> Download and install VMWare Workstation Player or VMWare Workstation Pro (both have similar process for installing Ubuntu).
-> Download the Ubuntu 20.04.6 ISO image from the official Ubuntu website, "https://releases.ubuntu.com/focal/ubuntu-20.04.6-desktop-amd64.iso"

# Steps to followed:

# 1.Install VMWare Workstation:
-> Download and install VMware Workstation Player or VMWare Workstation Pro from the VMWare website "https://www.vmware.com/content/vmware/vmware-published-sites/us/products/workstation-player.html.html".
-> The installation wizard will guide you through the installation steps. Follow the on-screen instructions, such as agreeing to the license agreement, selecting installation location, etc.
-> Once the installation is complete, you can launch VMWare Workstation Player or VMWare Workstation Pro from the start menu or by finding it in your installed application.

# 2.Installation and Set-up of Ubuntu 20.04.6 on VMWare:
-> Launch VMware Workstation on your Windows system.
-> Click on "Create a New Virtual Machine" or select "File" > "New Virtual Machine" from the menu.
-> Select "Typical" or "Custom" depending on your preference (Typical provides standard settings).
-> Select "Installer disc image file (ISO)" and click "Browse" to locate and select the Ubuntu 20.04.6 ISO file you downloaded.
-> Choose "Linux" as the guest operating system and select the version as "Ubuntu" or "Ubuntu 64-bit."
-> Enter a name for your virtual machine (e.g., "Ubuntu 20.04.6").
-> Choose the location where you want to store the virtual machine files.
-> Set the disk capacity for the virtual machine (recommended minimum size is 20 GB).
-> Choose "Store virtual disk as a single file" for easier management.
-> You can customize hardware settings such as memory (RAM), processor cores, network adapter, etc., based on your requirements. Allocate at least 2GB of RAM to Ubuntu for optimal performance.
-> Review the summary and click "Finish" to create the virtual machine.
-> Select the newly created virtual machine from the VMware Workstation dashboard.
-> Click "Play virtual machine" or "Power on this virtual machine" to start the Ubuntu installation process.
-> The Ubuntu installer will boot from the ISO file.
-> Follow the on-screen instructions to install Ubuntu. You'll be prompted to select the language, keyboard layout, disk partitioning, create a user account, etc.
-> Once the installation finishes, the system will prompt you to restart. Do so, and Ubuntu 20.04.6 should be installed within VMware Workstation.
-> After Ubuntu is installed, consider installing VMware Tools within the virtual machine. This enhances performance and enables seamless interaction between the host (Windows) and guest (Ubuntu) systems.


# Installation and Setup of Open 5gs on VMWare:
-> Create a new virtual machine on VMWare and install Linux distrubution (Ubuntu 20.04.6) on the virtual machine, following the installation wizard.
-> Once the system is installed, update the system using these commands:
        => sudo apt update
-> Install the necessary dependecies for Open5GS.

