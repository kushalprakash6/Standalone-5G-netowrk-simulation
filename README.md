[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/qFG2YiDH)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-7f7980b617ed060a017424585567c406b6ee15c891e84e1186181d67ecf80aa0.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=13139491)
# Mobile Computing README

Template with examples
<!-- PROJECT LOGO -->
<img src="resources/images/FRA-UAS_Logo_rgb.jpg" width="150"/>

<h1 align="center">team_entropy</h1>
<p align="center">
    <strong>Description</strong>
    <br>
    Comment
    <br>
    Kushal Prakash 1429800 
    Karthik Kothamangala Sreenath 1438341
    Padmini Manjunatha 1427336
    Madhushree Manjunatha Lakshmidevi 1445185
</p>
<br/>

## Feature overview

*   [x] **Easy to read** like an article
*   [x] **Feature overview and Contents** for fast orientation
*   [ ] **Visuals** to keep users engaged

## Contents

*   [What is this?](#what-is-this)
*   [When should I use this?](#when-should-i-use-this)
*   [Getting started](#getting-started)
    *   [Requirements](#requirements)
    *   [Install](#install)
    *   [Usage](#usage)
*   [Here is where it's your turn](#here-is-where-its-your-turn)
*   [Don't forget anything](#dont-forget-anything)
    * [Used Technologies](#used-technologies)
    * [Testing](#testing)
    * [Logging](#logging)
*   [Contribute](#contribute)
*   [License](#license)
*   [Sources](#sources)
*   [Conclusion](#conclusion)

## What is this?

This project is an exhaustive README template that you can customize to your needs.
You can either add sections you like or remove sections you don't like. But you have
every time an example in front of you, from which you can derive from.

## Why should I use this?

There are many README templates out there so why this one? The two main reasons for this are
that they contain often too little content or they are not easy to read or navigate through.

## Getting Started

So how do you get this template to work for your project? It is easier than you think.

### Requirements

* Have a project ready where you can add a README
* Basic knowledge of [Markdown][about-markdown] (here is a [Cheatsheet][markdown-cheatsheet])

### Install

Use git to clone this repository into your computer.

```
git clone https://github.com/FRA-UAS/mobcomwise23-24-team_entropy
```

### Usage

Use the well known command to copy the template

```bash
# Copy the content
CTRL + C

# Pase into your project
CTRL + V
```


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

## Architecture

![Architecture](https://github.com/FRA-UAS/mobcomwise23-24-team_entropy/blob/main/resources/images/Madhushree/arechitecture.png)


### Used technologies

To implement and emulate 5G core, we will be using the following tools.
TBD: List will be updated as the project progresses (R: Kushal Prakash)

### 1. Ubuntu desktop 22.04 LTS
Ubuntu is a widely-used open-source Linux distribution known for its user-friendly interface, stability, and strong community support. The edition we use is designed for personal computers with a user-friendly interface and pre-installed applications, and Server. Ubuntu Long-Term Support (LTS) releases offer extended updates for stability. It uses the Debian package management system, and the default desktop environment is GNOME, although users can choose others.

### 2. Open5GS (TBU: Version number)
Open5GS is an open-source implementation of 5G core network elements, developed to support 5G standalone (SA) and non-standalone (NSA) network architectures. It provides a platform for researchers, developers, and operators to experiment with and deploy 5G core network functionalities. 

### 3. UERANSIM (TBU: Version number)
User Equipment (UE) simulator, commonly referred to as ueransim, is an open-source project designed to simulate a 5G User Equipment (UE). The primary goal of ueransim is to provide a tool for developers, researchers, and operators to test and experiment with 5G network functionalities.

### 4. Vagrant (TBU: Version number)
Vagrant is an open-source tool for building and managing virtualized development environments. It provides a command-line interface (CLI) to create and configure reproducible and shareable development environments. Vagrant is commonly used in software development to ensure that the development environment matches the production environment as closely as possible.

### 5. Wireshark (TBU: Version number)
Wireshark is a widely-used open-source network protocol analyzer that allows users to capture and inspect the data traveling back and forth on a computer network in real-time. It supports various protocols and provides a detailed view of network traffic, helping users troubleshoot network issues, analyze security threats, and understand the communication between devices. Wireshark's user-friendly interface allows both beginners and experienced network professionals to examine packet-level details, apply filters, and visualize network interactions.

### 6. MongoDB
MongoDB is a widely used, open-source NoSQL database management system designed for high-performance, scalability, and flexibility in handling unstructured or semi-structured data. It falls under the category of document-oriented databases, storing data in a flexible, JSON-like format called BSON (Binary JSON). Key features of MongoDB include its ability to scale horizontally across distributed systems, automatic sharding for efficient data distribution, and support for dynamic schemas that allow easy modification of data structures. MongoDB is particularly well-suited for applications with evolving or unpredictable data models. It provides a powerful query language and indexing capabilities, making it suitable for a wide range of use cases, from web applications to big data processing. The community edition of MongoDB is open source, while there are enterprise versions with additional features and support provided by MongoDB, Inc.

For sure mention all the technologies you used. If the technologies age in time you don't forget
they are used and need to be replaced.


### Testing

No tests no sucess. You SHOULD have tests for every project, but do new users know how to run them?

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
