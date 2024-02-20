# FAQs, common issues and solutions

In this file, we will list all the issues we faced and possible solution or the reason for the issue. This will help in saving a lot of time for you.
Linux, Open5gs and UERANSIM is a ever growing community, even though if you do not find any solution for your issue here, you can find the updated infomration of the ubuntu community forums.

1. Can virtualise Ubuntu on MacOs with ARM processors?
   > Yes, you can use UTM software which is free to download and use for personal use. You can download it from their official website, as the app from the appstore has a charge for purchasing. We have created an guide to follow along as this is a new tool and not much information is available
   [UTM](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Install_Ubuntu_on_Mac.md)
   
3. Can I install Open5gs for ARM based processors?
   > No, currently the quick start guide is dedicated towards x86 architecture, hence users of ARM architecture needs to build it from sources.
   https://open5gs.org/open5gs/docs/guide/02-building-open5gs-from-sources/
4. Mongodb failed to run...
   > We faced several issues while trying to run Mongodb 6.x and 7.x versions on x86 architecture while emulating. After a lot of testing and research we found that Mongodb 4.4 version works well for our application and you will not face issues like you faced in 6.x or higher

5. WebUI not running when building from sources
   > We found this discussion https://github.com/open5gs/open5gs/discussions/2782#discussioncomment-8070985 where after discussing with others, we found some possible solutions to resolve it.

6. sudo command not working after fresh install of Ubuntu using Oracle VirtualBox
   > In case you install Ubuntu through VirutalBox, please follow the following commands to resolve the issue
     Go to terminal
   ```console
   su root
   ```
   > Input root password
   ```console
   apt-get install sudo -y
   adduser username sudo #put your username in place of username
   chmod 0440 /etc/sudoers
   exit
   ```
   Restart the PC to see the changes

7. Internet not working after setting static IP address?
   > Check the gateway address and other IP routes configured

8. SCTP could not connect: Connection refused
   ```console
   - Enable IPv4/IPv6 Forwarding
   sudo sysctl -w net.ipv4.ip_forward=1
   sudo sysctl -w net.ipv6.conf.all.forwarding=1

   - Add NAT Rule
   sudo iptables -t nat -A POSTROUTING -s 10.45.0.0/16 ! -o ogstun -j MASQUERADE
   sudo ip6tables -t nat -A POSTROUTING -s 2001:db8:cafe::/48 ! -o ogstun -j MASQUERADE

   sudo ufw disable
   Firewall stopped and disabled on system startup
   sudo ufw status
   Status: inactive
   ```
9. nr-binder command not found
    ```console
    chmod +x nr-binder
    ```

10. Permission denied to write or mofify in a folder even when sudo is used?
    > Then use following command with the desired path for which you wish to give full read, write and execute permission
    ```console
    sudo chmod 777 /folderpath/
    ```

11. Cannot create NAT network - shows invalid network configuration
    > In the current iteration of VirtualBox, it is difficult to find the network settings compared to earlier versions. Hence we have created our own guide on how to do that, please follow along
    [NAT config](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Creating_NAT_in_Virtualbox.md)

12. How much RAM and core count should I allocate for the VMs?
    > 1 core and 1GB of RAM are minimum requirement for running it, based on the applications and services, you can change the settings

13. How to uninstall anything?
    > Get the complete package name
    ```console
    dpkg --list | grep partial_package_name*
    ```
    > Trigger removing the package
    ```console
    sudo apt-get remove package_name
    ```
    > Trigger removing all the dependencies for the package
    ```console
    sudo apt-get purge package_name
    ```
    > Trigger removing all the unused packages which were once installed as dependencies
    ```console
    sudo apt-get autoremove
    ```
    > Remove retreived packages from the cache
    ```console
    sudo apt-get autoclean
    ```
    > Check if everything requested is removed
    ```console
    dpkg --list | grep partial_package_name*
    ```

14. Why can I not have class B IP address for my virtual machines in UTM and ARM arch?
    > From our trail and analysis, setting class B IP address to VMs in UTM, there was consistent internet and NAT issues. Hence stick with private IP address space.

15. Firefox not launching via nr-binder?
    > To launch browser for connecting to internet or file transfer, we used firefox in our project and sometimes it can throw error of insuffecient permission, this is also seen when you launch it from root. To fix that you can use the following command.
    ```console
    xhost +SI:localuser:your_username
    ```
    or, the below one, when you are running from the root
    ```console
    xhost si:localuser:root
    ```

16. Nextcloud does not allow you to login as the domain is untrusted
    > This can be resolved by going to the following location '/var/www/html/nextcloud/config' and changing the 'config.php' file.
    ```console
    $CONFIG = array (
       'trusted_domains' => 
       array (
           0 => 'localhost',
           1 => 'yourdomain.com',
           2 => '192.168.1.100',  // Example IP address
       ),
    );
    ```

17. Using kamailio for VoIP?
    > one of the tools needed for setting up kamailio server is 'ipsec-tools' and this tool is not updated to Ubuntu 22.04 at the time of the project, hence we cannot proceed with successful installation of the server. It threw an error for the same and the server setup failed.
