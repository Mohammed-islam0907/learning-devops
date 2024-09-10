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
### File that contains all files within the Linux file system ```cat /etc/group```
### ```sudo groupadd admin2``` - This will create a group called admin2 
### ```sudo usermod -aG admin, admin2 newuser``` adds this user to the admin and admin 2 group (groups must be seperated using comma)

## File Permissions 
### control who can read (r), write (w) and run (x)
#### - rwx r-x r-- First is the owner then group then public 
## Binary, Octal and String Representation!
### Binary: set of digits represented by 1 and 0 
## e.g. rwx:
### Binary: 111
### Octal (4+2+1) = 7

## Octal (chmod command)
### chmod 400 : Read permission only = 400