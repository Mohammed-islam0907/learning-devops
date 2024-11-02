# AWS notes

## IAM

- Account that has access full access 

## Groups & Users
- Create individual users so each user has access to what they need
- Users can be grouped e.g. based on roles
-

## Permissions

- Users/groups are assigned policies, which are JSON documents - which define the level off access they have
- Always apply the least privellage principle - don't give more permission than needed 

## IAM Policies Inheritence

- Inline policies are specific to users and not the group
- If a user is part of a group and needs more access that other members of the group, you can set inline policies

## IAM Policies Structure

![IAM Policies](../AWS/images/IAM%20Policies%20structure.png)

## IAM - Password Policy

- In AWS, you can setup password policy:
- Set minimum password length
- Require specific characters
- Allow all IAM users to change their paaswords
- Prevent reusign passwords

## MFA

- Most effective way to secure account
- Even if someone manages to get your password, they will need another security method e.g. Google authenticator, Hardware Key Fob, etc.

## AWS CLI - Command Line Interface

- Allows you to interact with AWS services from the terminal 
- Can do what you do in the console
- Allows you to manage scripts - automating tasks

## SDK - Software Development Kit

- Makes it easy to connect code to AWS services


## IAM Security Tools

**IAM Credentials Report**
- Report that lists all account's users and status of their various credentials 
- IAM Access Advisor (user-level)

**IAM Access Advisor (user level)**
- Shows service permissions granted to a users and when those were last accessed 
- Can be used to tune user permissions 

## Amazon EC2

- **EC2 - Elastic Compute Cloud - Infastructure as a Service**

- Renting virtual machines
- Store data on virtual drives (EBS)
- Distribute load across machines (ELB)
- Scaling services using auto scaling group (ASG) 


## EC2 sizing & configuration options

- OS: Linuxm Windows or Mac OS
How much:
    - CPU
    - RAM
    - Storage - Network attached (EBS & EFS), Hardware (EC2 Instance Store) - fast but temporary - if instance is stopped, the data is lost
- Network card: speed of network card, 
- Public IP address - making instance accessible from internet
- Firewall rules: security groups - control what traffic can get through and who can access your instance
- Bootstart script (configure at forst launch): EC2 


## EC2 User Data

- Can bootstrap instances using EC2 User Data script
- Bootstrapping: launching commands when machine starts
- Script run at start of instance only 
- Can automate the following:
    - Install updates/softwares
    - Download common files form internet
    - Anyting really- Runs with Data Script runs with root user
- EC2 User Data Script runs with root user - full control 

## Security Groups

- Control how traffic enters and exits our instances
- Only has allow rules 
- Acts as firewall on EC2 instances

**Things to know**
- If application times out, usually means there's a security group issue
- **"connection refused"** error means it's not a security group issue
- All inbound traffic is blocked by default
- All outbund traffic is authorised by default

## Classic Ports to Know

- 22 - SSH (Secure Shell ) - log into Linux instance
- 21 - FTP (File Transfer Protocol) - upload files ot file share (not very secure)
- 22 - SFTP (Secure File Transfer Protocol) - upload files using SSH
- 80 - HTTP - access unsecure websites
- 443 - HTTPS - access secure websites
- 53 - DNS - for DNS queries and resolving - translated domain names into IP addresses
- 3389 - RDP (Remote Desktop Protocol) - log intoo a Windows instance

## IPv4 vs IPv6

- IPv4: 10.10.20.140 - Made of 4 different numbers seperated by .
- IPv6: 3ffe:1900:4322:5:200:f8ff:fe21:75cf - Made due to rise of internet devices 

- IPv4 allows for 3.7 billion addresses in the public space

## Private vs Public IP's - NAT 

- Network Address Translation (NAT) - converts private IP to public IP 
- Allows company's to access internet 
- Different networks can have the same private IP's but will have different public IP's

- Public IP: no 2 devices can have the same IP addresses at th same time
- Private: Device can only be identified on a private network. Devices on the same network can't have the same IP address

## Elastic IP's 

- When you tuen off and start instance, the public IP address changes
- Elastic IP - public IPv4 you own as long as instance isn't deleted
- Can attach it to one device at a time 


**Why use?**
- Can mask failiure of an isntance by quickly remapping the address to another instance in your account

**Why to avoid?**
- Sign of poor architectural decisions
- Better to use random IP and register DNS name to it
- Or use Load balancer

## EBS Volume 

- Elastic Block Store (EBS): Network drive you can attach to EC2 instance (not physical) 
- Allows data to be stored even after termination
- They are bound to specific availability zone
- Free tier: 30 GB free EBS storage - SSD

## AMI (Amazon Machine Image)

- Customisation of an EC2 instance (templates)
- You add your own software, coniguration, OS, monitoring....
- Faster boot time because all your software is pre-packaged
- Can automate the setup of multiple EC2 instances with the same configuration, saving time

## EFS (Elastic File System)

- Managed network file system (NFS) that can be mounted on multiple EC2 instances 
- Scalable - grows as you add data
- Expensive

## Scalability & High Availability

**Scalability means application/system can handle greater loads by adapting**

2 types of scalability:
- Vertical (1st step)  - increase size of the instance e.g. adding more RAM 
- Horizontal - adding more instances. Also known as elastic scaling as when there's a spike in traffic, it scales up and then back down when needed e.g. Auto Scaling Group / Load balancer

**High availability: goes hand in hand with horizontal scaling**
- To be highly available, application/system needs to run in at least 2 data centres (AZ)
- Goal is to survive data centre loss
- If one AZ fails, traffic is automatically routed to another instance keeping application/server running
- Use ASG multi-AZ & Load Balancer multi-AZ 

## Load Balancer (LB)

- Forwards/spreads traffic across multiple instances 
- Sits between users and EC2 instances 
- Checks which instances are healthy 
- Ensures application is available even when instance fails
- provides SSL termination (HTTPS) for your websites
- High availability across zones 
- Does more than spreading traffic, handles failover, improves security and ensures high availability

## Elastic Load Balancer (ELB)

- Managed LB 
- AWS guaranteed it will be working
- AW takes care of upgrades, maintenance
- High availability
- More expensive than setting up LB e.g. using Nginx, but it less effort needed
- Integrated with mny AWS services

