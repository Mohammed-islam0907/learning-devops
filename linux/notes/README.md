# Linux notes

## touch & echo commands
### tiuch is used to create a file for e.g. touch file.txt
### echo is used to write in this file e.g. echo "Hello" > file.txt
### This will write Hello into file.txt

## Adding Users & giving sudo access
### ```sudo useradd newuser``` #### Adds user
### ```sudo passwd newuser``` #### Adds password

### ```su - newuser``` #### su command stands for substitute user 
### To give sudo permissions, you must use the ```command sudo usermod -aG sudo newuser``` from a user that has sudo permissions
### Quick test to make sure a user has sudo permissions is by running 
```sudo ls / root``` 

## Removing Users from group sudo
### Use command ```sudo deluser newuser sudo``` - revokes sudo access

## Groups
### File that contains all files within the Linux file system /etc/group