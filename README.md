[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/qFG2YiDH)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-7f7980b617ed060a017424585567c406b6ee15c891e84e1186181d67ecf80aa0.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=13139491)
# Mobile Computing project README

<!-- University LOGO -->
![Image of Frankfurt University of Applied Sciences logo](resources/images/FRA-UAS_Logo_rgb.jpg)


<h1 align="center">team_entropy</h1>
<p align="center">
    <strong>Open5gs and UERANSIM, services: VoIP, File sharing, Streaming</strong>
    <br>
    team_entropy
    <br>
    Kushal Prakash 1429800  <br>
    Karthik Kothamangala Sreenath 1438341 <br>
    Padmini Manjunatha 1427336 <br>
    Madhushree Manjunatha Lakshmidevi 1445185 <br>
    <br>
    Guidance <br>
    Prof. Dr. Armin Lehmann <br>
    Prof. Gregor Frick
    <br>
</p>
<br/>


## Contents

*   [Installation]
    *   [Installation on Mac](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Install_Ubuntu_on_Mac.md)
    *   [Installation on Windows](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Install_Ubuntu_on_Windows.md)
    *   [Installation of Open5gs and UERANSIM](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Installation%20of%20Open5gs%20and%20UERANSIM.md)
*   [Project Planning Essentials](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/ProjectPlan.md)
*   [Creation of NAT network](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Creating_NAT_in_Virtualbox.md)
*   [Acknowledgement](#acknowledgement)
*   [Abstract](#abstract)
*   [Definations and Abrrevations](#definition-and-abbreviations)
*   [Introduction](#introduction)
    * [Overview on open5gs](#overview-on-5g)
    * [User Equipments UEs](#user-equipements-ues)
    * [Next Generation NodeB - gNB](#gnbs)
*   [Network Functions - NFs](#network-functions-nfs)
*   [Network Slicing](#network-slicing)
*   [Open5gs Network Architecture](#open5gs-network-architecture)
    * [Data Network - DN](#data-network-dn)
    * [Access and Mobility management Function - AMF](#access-and-mobility-management-function-amf)
    * [Network Repository Function - NRF](#network-repository-function-nrf)
    * [Session Management Function - SMF](#session-management-function-smf)
    * [User Plane Function - UPF](#user-plane-function-upf)
    * [Policy Control Function - PCF](#policy-control-function-pcf)
    * [Network Slice Selection Function - NSSF](#network-slice-selection-function-nssf)
    * [Unified Data Management - UDM](#unified-data-management-udm)
    * [Unified Data Repository - UDR](#unified-data-repository-udr)
    * [Authentication Server Function - AUSF](#authentication-server-function-ausf)
*   [Services](#services)
    * [VOiP](#voip)
        * [Asterisk and Twinkle](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Installing_Asterisk_and_Twinkle.md)
    * [File Transfer](#file-transfer)
        * [NextCloud](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Installing_NextCloud.md)
    * [Video Streaming](#video-streaming)
*   [Technologies Used](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/documentation/Technologies%20Used.md)
*   [Contribute](#contribute)
*   [License](#license)
*   [Sources](#sources)
*   [Conclusion](#conclusion)

## Acknowledgement

This project owes its successful completion to the invaluable assistance provided by Professor Dr. Armin Lehmann and Professor Ulrich Trick from Frankfurt University of Applied Sciences. Throughout the project's execution, their guidance and support were instrumental, playing a crucial role in helping us achieve our objectives. We are sincerely grateful to them for serving as our project mentors, imparting the knowledge and direction necessary for the project's successful culmination.


## Abstract

Compared to 4G network 5G offers high speed data rates and connectivity even during huge user volume. Along with this there are a variety of other applications supported by 5G network. The goal of a network slicing design for a 5G network is to increase network flexibility and dynamics to accommodate contemporary network applications. In this project, we have implemented a 5G Stand Alone (SA) network using Open5gs as a 5G core and UERANSIM as 5G-RAN. The main objective of this project is to implement network slicing to provide File Sharing, Streaming and VOIP calling services between two tenant groups. We configured Kamailio, Next Cloud and Owncast servers in different Vms to provide VOIP Calling, File Sharing and Streaming services respectively. The tenant groups were able to access the services using the dedicated slices as per their requirements.

## Definition and Abbreviations

5G SA                         5G Stand Alone
AMF                           Access and Mobility Management Function
5QI                           5G QoS Identifier
NRF                           Network Repository Function
UE                            User Equipment
NSSF                          Network Slice Selection Function
PDU                           Protocol Data Unit
NGAP                          Next Generation Application Protocol
SMF                           Session Management Function
SD                            Slice Differentiator
SST                           Slice/Service Type
SDN                           Software Defined Network
UPF                           User Plane Function
RAN                           Radio Access Network
PCF                           Policy Control Function
VOIP                          Voice Over Internet Protocol

## Introduction

The fundamental architectural concepts and technological advancements of 5G distinguish it from earlier generations of mobile communication networks. Key elements like network slicing and CUPS play pivotal roles in realizing the separation of control and user planes. Additionally, through network slicing, multiple logical (virtual) networks can be established on the same physical infrastructure to cater to diverse consumers and services. To implement the principles of CUPS and Network Slicing in the 5G network, it is essential to integrate Network Function Virtualization, Software Defined Networking, and Cloud-Native technologies into the core network design. These technologies are aimed at enhancing the adaptability, scalability, and flexibility of the 5G core network.

## Overview on 5G

5G, or fifth-generation, is the latest standard in mobile telecommunications technology, succeeding 4G/LTE. It represents a significant advancement in terms of speed, capacity, and connectivity, aiming to provide faster and more reliable communication for both consumers and businesses. Key features of 5G include:

Higher Data Rates: 5G offers substantially higher data rates compared to its predecessors, with peak data rates reaching several gigabits per second. This enables faster downloads, improved streaming quality, and enhanced overall network performance.

Low Latency: 5G reduces latency, the time it takes for data to travel from the source to the destination and back, to a few milliseconds. This low latency is crucial for applications that require real-time responsiveness, such as augmented reality (AR), virtual reality (VR), and autonomous vehicles.

Increased Network Capacity: 5G networks can support a significantly higher number of connected devices per square kilometer. This increased capacity is essential for the growing number of Internet of Things (IoT) devices and the expanding digital ecosystem.

Network Slicing: 5G introduces the concept of network slicing, allowing network operators to create virtualized and customized "slices" of the network tailored to specific use cases, such as enhanced mobile broadband, massive machine-type communication, and ultra-reliable low-latency communication.

Massive MIMO (Multiple Input, Multiple Output): 5G utilizes advanced antenna technologies like Massive MIMO, which involves deploying a large number of antennas at base stations to improve spectral efficiency and increase data throughput.

mmWave Spectrum: 5G networks leverage millimeter-wave (mmWave) spectrum, which offers high bandwidth for faster data transfer. However, these higher frequencies have shorter range and can be impacted by obstacles, requiring careful network planning and deployment.

Security Enhancements: 5G incorporates improved security features to protect user data and network integrity. This includes encryption, authentication protocols, and privacy safeguards.

Global Standardization: 5G follows global standards set by organizations like the 3rd Generation Partnership Project (3GPP), ensuring interoperability and compatibility across different vendors and network operators.

### User Equipements (UEs)
The User Equipment in a 5G network refers to the end-user devices such as smartphones, tablets, Internet of Things (IoT) devices, and other gadgets that connect to the 5G infrastructure to access communication services. The UE plays a crucial role in the 5G ecosystem by initiating and maintaining connections with the 5G network. It communicates with the Access and Mobility Management Function for access and mobility management, the Session Management Function for session-related functions, and the User Plane Function for handling user plane functionality. The UE is integral to the realization of the 5G vision, enabling high data rates, low latency, and support for a massive number of connected devices. With advanced capabilities, such as improved antenna technologies and compatibility with diverse spectrum bands, the 5G UE contributes to the overall enhanced connectivity and user experience in the 5G network.

### gNBs
The gNB, or gNodeB, is a fundamental component of the 5G radio access network and serves as the base station that connects User Equipment to the 5G core network. The gNB is responsible for radio transmission and reception, managing the radio resources, and facilitating wireless communication with UEs using advanced technologies such as Massive Multiple Input Multiple Output and beamforming. It plays a key role in providing the increased data rates, low latency, and improved connectivity that characterize 5G networks. The gNB communicates with the 5G core network elements, such as the Access and Mobility Management Function and Session Management Function, to establish and maintain connections. As a critical part of the 5G infrastructure, gNBs contribute to the scalability, flexibility, and efficiency of 5G networks, enabling the support of diverse use cases ranging from enhanced mobile broadband to massive machine-type communication and ultra-reliable low-latency communication.

### Network Functions (NFs)
Network Functions in a 5G architecture refer to the various software components responsible for specific tasks within the network. These functions include entities such as the Access and Mobility Management Function, Session Management Function, User Plane Function, Network Repository Function, Network Slice Selection Function, Authentication Server Function, Unified Data Management, Unified Data Repository, Policy Control Function, and Unified Data Storage Function. Each NF performs a specialized role, such as managing access, handling sessions, routing user plane traffic, authenticating users, storing data, enforcing policies, and supporting network slicing. The orchestration and collaboration of these NFs enable the delivery of high-performance, low-latency, and scalable 5G services across a wide range of applications and use cases, defining the functionality and capabilities of the 5G network architecture.

### Network Slicing
Network Slicing is a pivotal concept in 5G networks, allowing the creation of isolated and customized virtual networks to cater to diverse use cases and application requirements. These virtual networks, known as network slices, are tailored to specific service characteristics, such as enhanced mobile broadband, massive machine-type communication, or ultra-reliable low-latency communication. The Network Slice Selection Function plays a crucial role in selecting and activating the appropriate network slice based on the user's service requirements. Network slices provide a way to efficiently share and optimize network resources, ensuring that each slice operates independently with its own set of configurations and policies. This flexibility enables 5G networks to simultaneously support various services, applications, and industries, fostering innovation and accommodating the diverse connectivity needs of a wide range of users and devices.

### Open5gs Network Architecture 
The architecture of open5gs is structured to adhere to 3GPP (3rd Generation Partnership Project) standard for 5G network.
![Architecture](documentation/resources/images/5G_NetworkArchitecture.png)

### Data Network (DN)
The Data Network in a 5G architecture refers to the part of the network responsible for handling data traffic between the User Equipment and external data networks, including the broader internet. The DN encompasses various components, such as the User Plane Function (UPF) and related functions that manage data transmission, packet routing, and forwarding. The UPF, in particular, plays a key role in the efficient and low-latency transport of user data, supporting the high-speed and high-capacity requirements of 5G networks. The DN is integral to providing enhanced data rates, improved connectivity, and efficient handling of diverse data types, contributing to the overall performance and capabilities of 5G networks in delivering advanced communication services and supporting a wide array of applications.

### Access and Mobility management Function (AMF)
The Access and Mobility Management Function is a critical network function in a 5G architecture responsible for managing access to the network and ensuring seamless mobility for User Equipment. The AMF facilitates the establishment and release of connections, mobility procedures, and authentication processes, playing a pivotal role in the initial network access and subsequent handovers as UEs move within the network. It communicates with the User Equipment (UE) and other network functions, coordinating various access-related functions. The AMF's responsibilities include registration, authentication, and authorization of UEs, as well as tracking their movements to optimize network resources. In 5G, the AMF is central to providing efficient access control and mobility management, contributing to the network's ability to deliver enhanced mobile broadband and support a wide range of applications with diverse connectivity requirements.

### Network Repository Function (NRF)
The Network Repository Function is a key element in a 5G network architecture responsible for maintaining information about available network functions (NFs). The NRF plays a crucial role in network discovery and the dynamic allocation of resources. It assists in the selection and activation of the appropriate Network Slice Selection Function for specific services, ensuring efficient utilization of the network infrastructure. By providing a central repository of information about available NFs, the NRF enhances the scalability and flexibility of 5G networks, enabling the system to adapt to varying service requirements and efficiently manage network resources across diverse use cases. The NRF's ability to dynamically handle information about NFs contributes to the overall intelligence and adaptability of the 5G network architecture.

### Session Management Function (SMF)
The Session Management Function is a critical component within the 5G network architecture that plays a central role in handling session-related functions for User Equipment (UE). The SMF is responsible for the establishment, modification, and termination of sessions, ensuring efficient communication between the UE and the 5G network. It manages the data session, including aspects such as Quality of Service (QoS), policy enforcement, and IP address allocation. The SMF interacts with other network functions, such as the Access and Mobility Management Function and the User Plane Function, to facilitate seamless and optimized session management. By efficiently handling sessions, the SMF contributes to the delivery of high-performance and low-latency services in 5G networks, supporting a wide range of applications and use cases.

### User Plane Function (UPF)
The User Plane Function is a critical component in a 5G network architecture responsible for managing the user plane functionality, handling the routing and forwarding of data packets between the User Equipment and external data networks. The UPF plays a central role in ensuring efficient data transmission, low-latency communication, and high-speed connectivity for 5G services. It facilitates the delivery of user data with optimal performance, supporting the enhanced data rates and responsiveness characteristic of 5G networks. The UPF interacts with other network functions, such as the Session Management Function (SMF) and the Access and Mobility Management Function, to coordinate session-related functions and access management. Its role in efficiently managing the user plane traffic contributes to the overall capability of 5G networks to deliver diverse services with improved network performance.

### Policy Control Function (PCF)
The Policy Control Function is a vital element in the 5G network architecture responsible for enforcing policies related to Quality of Service (QoS) and user plane functionality. The PCF ensures that network resources are allocated and utilized in accordance with predefined policies, enabling efficient management of data traffic and service quality. It plays a crucial role in optimizing network performance by dynamically adjusting policies based on real-time conditions and user requirements. The PCF interacts with various network functions, including the Session Management Function and the Access and Mobility Management Function, to coordinate and enforce policies across the network. Through its policy enforcement capabilities, the PCF contributes to the ability of 5G networks to provide a reliable, responsive, and adaptable platform for a diverse range of applications and services.

### Network Slice Selection Function (NSSF)
The Network Slice Selection Function is a key component in the 5G architecture that plays a pivotal role in the creation and selection of network slices. Network slices are virtualized, isolated segments of the 5G network tailored to specific service requirements. The NSSF is responsible for determining the most suitable network slice based on the user's service needs and mobility patterns. It interacts with other network functions such as the Access and Mobility Management Function, the Policy Control Function (PCF), and the Unified Data Management to gather information and make informed decisions about network slice selection. By dynamically adapting to user demands and application requirements, the NSSF ensures that 5G networks can efficiently support a wide array of services with diverse characteristics, from enhanced mobile broadband to ultra-reliable low-latency communication.

### Unified Data Management (UDM)
The Unified Data Management is a crucial element in the 5G network architecture responsible for managing subscriber-related data. It centralizes and securely stores essential information about users, including authentication credentials, subscription details, and service profiles. The UDM plays a vital role in authenticating users and authorizing their access to network resources, ensuring the security and integrity of the 5G network. It interacts with various network functions, such as the Authentication Server Function and the Session Management Function, to facilitate seamless connectivity and support personalized services. By efficiently managing subscriber data, the UDM contributes to the dynamic and secure operation of 5G networks, enhancing their ability to provide a range of services with diverse requirements.

### Unified Data Repository (UDR)
The Unified Data Repository is a critical component within the 5G network architecture, dedicated to storing and managing user data. Specifically, the UDR focuses on handling dynamic user-related data, such as session-specific information, usage statistics, and contextual data relevant to ongoing connections. It interacts with various network functions, including the Session Management Function (SMF) and the Policy Control Function (PCF), to ensure that user data is efficiently accessed and utilized to support real-time communication services. The UDR plays a pivotal role in facilitating the dynamic nature of 5G networks by securely managing and updating user-related information, contributing to the overall responsiveness, reliability, and adaptability of the network in delivering diverse services and applications.

### Authentication Server Function (AUSF)
The Authentication Server Function is a crucial component in the 5G network architecture responsible for providing authentication services to verify the identity of User Equipment and ensure secure access to the 5G network. The AUSF plays a pivotal role in the initial authentication of UEs, contributing to the establishment of secure connections. It interacts with other network functions, including the Access and Mobility Management Function and the Unified Data Management, to authenticate users and authorize their access to network resources. The AUSF's responsibilities include validating credentials, generating authentication vectors, and ensuring the integrity and security of the authentication process. By enforcing robust authentication mechanisms, the AUSF enhances the overall security posture of 5G networks, safeguarding against unauthorized access and potential security threats.

## Services

### VoIP (Voice over Internet Protocol)

VoIP, the acronym for Voice over IP, has revolutionized communication by carrying voice calls over the internet instead of traditional phone lines. This allows for cost-effective communication, seamless integration with other internet services, and exciting features like video calls and instant messaging. But to make it all work seamlessly, you need players like Kamailio, Asterisk and Linphone.

Asterisk, an open-source powerhouse, acts as the central server in a VoIP setup. Think of it as the traffic conductor, orchestrating call routing, security, and other essential functions for your VOIP network. It's highly customizable and scalable, making it suitable for anything from small home networks to large-scale corporate setups.

Asterisk, on the other hand, is your friendly neighborhood client software. Available on various platforms like Windows, macOS, Linux, Android, and iOS, it allows you to make and receive calls, video calls, and instant messages using the services provided by Asterisk. So, while Kamailio handles the behind-the-scenes magic, Linphone is your interface to the world of VoIP communication.

Together, Asterisk and Twinkle form a dynamic duo, making VOIP a reality for users. Asterisk ensures everything runs smoothly and securely, while Twinkle empowers you to connect and communicate with ease. But their capabilities extend beyond just basic calling. Asterisk can be used for other SIP-based applications like instant messaging and presence services, while Linphone offers various plugins and extensions for further customization and features.

This brief overview hopefully gives you a clearer picture of how VOIP, Kamailio, and Linphone work together to bring the power of internet-based communication to your fingertips. Remember, there's always more to explore, and both Kamailio and Linphone have active communities ready to answer your questions and guide you further on your VOIP journey.

## File transfer

File transfer is a fundamental aspect of digital communication, allowing users to share files seamlessly between devices. There are various methods for transferring files, including traditional approaches like email attachments, USB drives, and network file sharing protocols like FTP and SFTP. Cloud-based file-sharing systems have become increasingly popular due to their accessibility and convenience, enabling users to transfer data safely and effectively across the internet.

Nextcloud is a leading open-source file-sharing and collaboration platform that provides users with a comprehensive solution for file transfer and storage. With Nextcloud, users can set up their own cloud storage instance, allowing them to upload, organize, and share files securely. Nextcloud emerges as an excellent choice for individuals, teams, and companies seeking a self-hosted and configurable file transfer solution. It offers features such as share links, user accounts, and real-time collaboration on documents.

Nextcloud installation packages are available for various operating systems, and the community provides extensive documentation, simplifying the setup process. Users can install Nextcloud on their preferred cloud, virtual machines, or on-premises servers. Once installed, Nextcloud provides a user-friendly web interface where users can manage their files and collaborate with others, making it a versatile solution for file transfer needs across different environments.

Nextcloud offers users the liberty to tailor their file-sharing configuration to suit their specific needs, whether for enterprise-level collaboration or personal usage. It empowers users to transmit data securely and efficiently, facilitating smooth communication and collaboration workflows in today's digital era. These capabilities are facilitated by Nextcloud's comprehensive features and intuitive user interface.

## Video streaming


### Testing

No tests no sucess. You SHOULD have tests for every project, but do new users know how to run them?

## DDOS attack on the network
By using many UEs to connect with the network at once in loop we can over load the tower to crash it, also given the low system specification, we can achieve it sooner.

### Logging

Logging is essential. How do you know something went wrong if the computer doesn't tell you? Logs
are the first place to search for bugs. Explain to everybody how you can customize it or used it
in the right way.

## Contribute

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Sources

1. 	5G : an introduction to the 5th generation mobile networks / Ulrich Trick https://hds.hebis.de/fuas/Record/HEB476048613
2. 	5G for the connected world https://hds.hebis.de/fuas/Record/HEB450285588
3. 	5G technology : 3GPP new radio / edited by Harri Holma and Antti Toskala (Nokia Siemens Networks, Finland), Takehiro Nakamura (5G Laboratories, NTT DOCOMO, Inc., Japan) https://hds.hebis.de/fuas/Record/HEB458457841
4. 	https://github.com/open5gs/open5gs/discussions/2782#discussioncomment-8070985
5. 	https://open5gs.org/open5gs/docs/guide/01-quickstart/
6. 	https://open5gs.org/open5gs/docs/guide/02-building-open5gs-from-sources/
7. 	https://github.com/aligungr/UERANSIM/wiki/Installation
8. 	https://free5gc.org/guide/2-config-vm-en/
9. 	https://docs.nextcloud.com/server/latest/admin_manual/installation/example_ubuntu.html
10. https://github.com/s5uishida/open5gs_5gc_ueransim_sample_config
11. https://github.com/s5uishida/open5gs_5gc_ueransim_nearby_upf_sample_config
12. https://open5gs.org/open5gs/docs/tutorial/04-metrics-prometheus/

[react-markdown][react-markdown] - Project which served as an inspiration for this README

[Blog post templates][blog-post-templates] - Used to structure this template as an easy to read blog post

[About markdown][about-markdown] - Why should you use markdown?

[Markdown Cheat Sheet][markdown-cheatsheet] - Get a fast overview of the syntax

[//]: # "Source definitions"
[react-markdown]: https://github.com/remarkjs/react-markdown "React-markdown project"
[blog-post-templates]: https://backlinko.com/hub/content/blog-post-templates "Backlinko blog post templates"
[about-markdown]: https://www.markdownguide.org/getting-started/ "Introduction to markdown"
[markdown-cheatsheet]: https://www.markdownguide.org/cheat-sheet/ "Markdown Cheat Sheet"

## Conclusion

To summarize..

We have an exhaustive README template with many features. The README is easy to read and navigate like an article.
In our future projects we can use this template to get a great head start in creating a custom README.
