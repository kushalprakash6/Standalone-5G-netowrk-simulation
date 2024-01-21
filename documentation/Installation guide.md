# Installation guide for windows:

# Here are the steps-by-step installations to install Ubuntu 20.04.6 using VMWare on a Windows System:
# Requirements:
-> Download and install VMWare Workstation Player or VMWare Workstation Pro (both have similar process for installing Ubuntu).
-> Download the Ubuntu 20.04.6 ISO image from the official Ubuntu website, "https://releases.ubuntu.com/focal/ubuntu-20.04.6-desktop-amd64.iso"

# Steps to followed:

## Create a virtual machine:
1. Open VMWare Workstation Player.
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/Create-a-vm.png)

2. Choose "Installer disc image file (iso)" and browse to the location where you saved the Ubuntu 20.04.6 ISO file. Click "Next."
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st2.png)

3. Enter the name for your virtual machine and choose a location to save it. Click "Next."
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st3.png)
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st4.png)

4. Specify the disk capacity for your virtual machine. It is recommended to allocate at least 20 GB. Select "Store virtual disk as a single file" for better performance. Click "Next."
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st6.png)
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st7.png)

5. Customise the hardware settings and click -> close.
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st8.png)

6. Review the summary and click "Finish" to create the virtual machine.



## Install Ubuntu:
1. Start the virtual machine by clicking "Play virtual machine."
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st9.png)

2. The virtual machine will boot from the Ubuntu 20.04.6 ISO file. Follow the on-screen instructions to install Ubuntu.
![image](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/installation-of-ubuntu/st10.png)

3. Once the installation is complete, remove the installation media (ISO) and restart the virtual machine.

4. Once booted, enter the username and password to login and type the following command
    *$ sudo apt install ubuntu-desktop*

5. This will install GUI for Ubuntu and after installation type the following command 
    *$ sudo reboot*