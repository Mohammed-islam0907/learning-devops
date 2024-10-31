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
- "connection refused" error means it's not a security group issue
- All inbound traffic is blocked by default
- All outbund traffic i authorised by default