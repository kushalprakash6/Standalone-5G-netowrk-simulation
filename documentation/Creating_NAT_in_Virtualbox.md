# Creating NAT netowrk for communication between VMs

## Contents

*   [Introduction](#Introduction)


## Introduction

This section covers on how to create NAT network in oracle VirtualBox. 
Unlike older versions, in the current versions of virtual box (7.0.14 on Windows and 7.0.8 on MacOS ARM processors) when we go into the network tab of that virtual machine, we do not get the option to select NAT netowrk as an option.

## Steps:

Step1: Open VirtualBox

Step2: Go to tools > Network

Step3: Go to NAT tab

Step4: click on create new

Step5: Save it

Step6: go to the VM and select enable adapter if not done, then select NAT network and now the name should be available for selecting the NAT network. 

Step7: After saving, it should work now, this can be verified by using ip addr show in the ubuntu VM to check the IP address.
