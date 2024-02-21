# Installing Asterisk and Twinkle

In this file, we will discuss about installing and configuring Asterisk a SIP server for VoIP calling services and Twinkle for a softphone. Here we discuss about the installation process we followed, for any issues refer to FAQ.md file.

Step-1: Run update and upgrade before starting any installation
  ```console
     sudo apt update && sudo apt upgrade -y
  ```
Step-2: Install Asterisk
  ```console
     sudo apt-get install asterisk
  ```
Step-3: Configure Asterisk
  ```console
     cd /etc/asterisk
  ```    
  > Configure the files sip.conf, voicemail.conf, extensions.conf as configured already in the config folder. You can add users as needed as the configuration is a straight forward and easy step
Step-4: Start Asterisk
  ```console
     sudo asterisk -r
  ```
  > Within Asterisk CLI shell type the following command, this check the codes, we found many warnings and errors, this can be ignored if the server is working in further steps
  ```console
      reload 
  ```
  > Check if the clients have been added
  ```console
      sip show peers 
  ```

Step-5: Install Twinkle softphone
  ```console
      sudo apt-get install twinkle
  ```
Step-6: Launch Twinkle softphone
  ```console
      sudo twinkle
  ```
Step-7: Configure the softphone
  > Add all the info from the user info entered while adding sip users in the server
