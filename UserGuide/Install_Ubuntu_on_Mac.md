# Installation guide for MacOs

## Contents

*   [Introduction](#Introduction)
*   [Downloading and installing UTM](#Downloading-and-installing-UTM)
*   [Downloading and installing Ubuntu ISO](#Downloading-and-installing-Ubuntu-ISO)


## Introduction

To run Ubuntu on MacOs locally, we can do it in two methods. They are as follows:
1. Install the required Ubuntu on baremetal and run.
2. Install Ubuntu using a Virtualisation software or tool on the current operating system.

For our project, we need to run multiple OS to simulate various elements of 5G network and infrastructure, hence we are going with the second option of installing Ubuntu via virtualisation as it allows us to run multiple OS on single machine.

One way to install Ubuntu on MacOs is using UTM application. UTM is a free software which allows users to virtualise or emulate other operating systems. Below are the steps to install Ubuntu using UTM. 

*NOTE: Refer to installing Open5gs and installing UERANSIM files for respective installation steps.*


For our project, we are using Ubuntu 22.04.3 LTS server for ARM64. After checking sveral versions and versions for various architecture, this one seems to work the best at the moment. You can try different versions and steps might vary a little, but most of the steps will remain the same.


## Downloading and installing UTM
1. Open web browser and go to https://mac.getutm.app and click on download
2. Install the package and the application will be ready to use.


## Downloading and installing Ubuntu ISO
1. Open web browser and go to https://ubuntu.com/download/server/arm and download the latest LTS version available. Currently it is 22.04.3.

2. Open UTM application

![UTM_WelcomeScreen](resources/images/UTM/Pic_1.png)

3. Click on create a new virtual machine 

![UTM_WelcomeScreen](resources/images/UTM/Pic_2.png)

4. Click on virtualise as our system architecture and OS architecture is same (ARM64)

![UTM_Linux](resources/images/UTM/Pic_3.png)

5. Select Linux in the option as Ubuntu is a linux distribution

![UTM_WelcomeScreen](resources/images/UTM/Pic_4.png)

6. Click on browse and select the Ubuntu ISO and leave other options as it as and click on continue

7. Enter the required RAM, CPU core count and Drive space. In my configuration, I have used 2GB of RAM, 2 CPU cores and 64 GB of Disk space and works fluidly.

![UTM_UbuntuWelcomeScreen](resources/images/UTM/Pic_5.png)

8. Select Try or Install Ubuntu Server

![UTM_LanguageScreen](resources/images/UTM/Pic_6.png)

9. Select the preferred lanuage (rest of the setup will be in English) and select done

![UTM_KeyboardScreen](resources/images/UTM/Pic_7.png)

10. Select the keyboard type

![UTM_UbuntuType](resources/images/UTM/Pic_8.png)

11. You can install minimal version of Ubuntu if system resource are limited, else you can install complete version

![UTM_NetworkConnection](resources/images/UTM/Pic_9.png)

12. Select done, the default address will already be configured

![UTM_ProxyAddress](resources/images/UTM/Pic_10.png)

13. You can leave the proxy address empty and continue with the installation

![UTM_MirrorPing](resources/images/UTM/Pic_11.png)

14. The installer will try to ping to the mirror server, if the network config is not proper, it can fail. But you need not worry, you can continue the installation

![UTM_Disk](resources/images/UTM/Pic_12.png)

15. Select the option to use the entire disk and continue

![UTM_DiskPart](resources/images/UTM/Pic_13.png)

16. The screen shows how the disk will be partioned and you can select Done

![UTM_UserDetails](resources/images/UTM/Pic_14.png)

17. Give your name, server-name, username and password and continue

![UTM_skip](resources/images/UTM/Pic_15.png)

18. Skip Ubuntu pro for now

![UTM_SSH](resources/images/UTM/Pic_16.png)

19. You can decide to install SSH server and other tools if needed, else you can skip those and continue

![UTM_InstallDone](resources/images/UTM/Pic_17.png)

20. Once the installation is done, click on reboot now

![UTM_DiskClear](resources/images/UTM/Pic_18.png)

21. Now you may face the issue that the VM might not start, that is because the installation medium is still present. You have to remove that from the config page, and CD/DVD option should be empty. Once that is done, restart the VM and it will boot.

![UTM_NetworkMode](resources/images/UTM/Pic_20.png)

22. If you face any issue to connect to the internet, then you can change the network mode to bridged mode in network setting and the connection should be proper now.

![UTM_Login](resources/images/UTM/Pic_21.png)

22. Once booted, enter the username and password to login and type the following command

```console
sudo apt install ubuntu-desktop
```
23. This will install GUI for Ubuntu and after installation type the following command 

```console
$ sudo reboot
```

## Setting static IP address

DHCP is active by default and every time you restart the VMs, there are high chances that the IP address will change every time, to avoid changing it in all the configurations, we will have to set a static IP address. 
The following steps describes on how it can be achieved
 Step 1: Open terminal window

 Step 2: Type the following command

 ```console
sudo nano /etc/netplan/01-netcfg.yaml
```
Enter password if prompted.
Netplan contains all the network related configurations and adding our code will help in giving our inputs on how the network should be setup

```console                                                                                     
# /etc/netplan/01-netcfg.yaml

network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s1:
      addresses:
        - 192.168.64.10/24
      gateway4: 192.168.0.1  # Make sure to adjust the gateway address accordingly
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]  # Optional: DNS server addresses

```
Save the file

Step3: Apply the network configuration

```console
sudo netplan apply
```

You can use the following commands to check the IP address of the system, this can be verified if is static even after restart

```console
ip addr show
```
or
```console
ifconfig
```
You can also check the IP route using

```console
ip route
```

You can also use the following command to check all the gateways

```console
netstat -rn
```

 
