# Docker notes

## What are containers?
- Containers are lightweight, portable units for running applications
- Contain code, runtime, and all dependencies the applications needsto run


![Containers](Images/containers.png)
- Infastructure represents the physical/virtual hardware where everything runs
- Above we have the Host operating system - runs directly on the infastructure e.g. Mac OS
- Docker engine - what makes containerisation possible - provides environment to build, run and manage containers
- Above we have docker containers - each container holds application and all the independencies the application needs to run
    - containers are isolated meaning they don't interfere with eachother 

## Benefits of Containers

- Isolation of containers means the applications don't interfere with eachother
- Provide consistent environment for applications to run - behave same wherever they run - e.g. Mac or Windows
- Containers share host operating system - therefore quick start up 

## What is Docker?

- Open platform for developing, shipping and running applications in containers
- Simplifies process of managing contaibers making it easer to build, deploy and manage applications

**Components of Docker**

1. Docker Engine- runs and manages containers based on instuction from docker files and images
2. Docker Hub - Repository where you can find and share Docker images

## Images & Containers

- Images - templates for creating containers 
    - They are immutable - don't change once created 
        - runs consistently no matter where it is deployed
- Containers - running instances of these images
    - What you intereact with 
    - Image = recipe, Container = product created
    - Container run application 

- Docker file is used to build Docker images 

