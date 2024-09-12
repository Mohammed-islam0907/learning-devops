# Linux notes

## touch & echo commands
### touch is used to create a file for e.g. ```touch file.txt```
### echo is used to write in this file e.g. ```echo "Hello" > file.txt``` # This will write Hello into file.txt

## Adding Users & giving sudo access
### ```sudo useradd newuser``` # Adds user
### ```sudo passwd newuser``` # Adds password

### ```su - newuser``` # su command stands for substitute user 
### To give sudo permissions, you must use the ```command sudo usermod -aG sudo newuser``` from a user that has sudo permissions
### Quick test to make sure a user has sudo permissions is by running 
```sudo ls / root``` 

## Removing Users from group sudo
### Use command ```sudo deluser newuser sudo``` - revokes sudo access

## Groups
### File that contains all files within the Linux file system ```cat /etc/group```
### ```sudo groupadd admin2``` # This will create a group called admin2 
### ```sudo usermod -aG admin, admin2 newuser``` # adds this user to the admin and admin 2 group (groups must be seperated using comma)

## File Permissions 
### control who can read (r), write (w) and run (x)
#### - rwx r-x r-- First is the owner then group then public 
## Binary, Octal and String Representation!
### Binary: set of digits represented by 1 and 0 
## e.g. rwx:
### Binary: 111
### Octal (4+2+1) = 7

### Octal (chmod command)
### ```chmod 400``` : Read permission only = 400

### e.g. -rw-rw-r-- 
#### User has read & write permission, group has read & write permission, other has read permission only 
### e.g. of changing permissions change, run command ``chmod u+x, g+r , o-w filename.txt`` 

### grouping permissions
#### ```chmod ug=x, o=r``` #This will give users & groups x, others r

## Changing File/Dir Ownership for User/Group
### ```chown``` - changes owner & ```chgrp``` changes group
### e.g. ```sudo chown newuser example.txt``` #This will make newuser owner 
### e.g. ```sudo chgrp admin2 example.txt``` #This will make admin2 group of the file
## If we want to recursively change ownership of directory & contents:
   ```sudo chown -R newuser:admin2 my_directory``` #my_directory will change to newuser & admin2

## Standard Streams
 -  Standard input: typing command
 - standard output: Linux file system prints onto terminal 
 - Standard error: prints error onto screen

## Error Streams"
- Use ```2>``` command 
- e.g. ```ls nonexistent 2> error.txt``` # This will redirect erros to the file error.txt 
- ```&>``` redirects all outputs into a file
- File dev/null will just discard anything 

## Environment variables

- Common example$: PATH, HOME, USER, SHELL 
- Temporarily set a variable ``` export NAME=VALUE```
- .bashrc & .zshrc files are configuration files

### Let's modify the variable $PATH
'''export PATH=$PATH:/home/ubuntu''' #This will add /home/ubuntu  

## Aliases - the Command Short-cutter
- e.g. ```alias morning='echo "Get out of bed!"' #Now when i run morning, "Get out of bed!" will be printed
