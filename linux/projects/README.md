# Bandit Game 

## If you need assistance for the bandit game, here it is:

<br/>

### Level 0 (15/09/2024)

![LEVEL0](../../images/Screenshot%202024-09-15%20at%2008.56.44.png)

- ssh: This command initiates a secure shell connection, which allows me to securely access and manage a remote machine over an insecure network.

- bandit0: This is the username

- @bandit.labs.overthewire.org: This is the host name of the remote server

- -p 2220: Specifies the port number

<br>

### Level 0 → Level 1 (15/09/2024)
![Level 0 → Level 1](../../images/Screenshot%202024-09-15%20at%2008.59.31.png)

### Mistake I made: 
After logging in, I began by exploring the current directory with the ```ls``` command, which revealed a single file named "readme." Mistakenly, I first tried to access "readme" as if it were a directory using ```cd readme```, but quickly learned it was a file due to the error message returned.

### Here is a breakdown of what I did:
<br>

- ```ls``` : Lists all files and directories in the current directory. It's a fundamental command for navigating and understanding the structure of directories.

- ```cd readme```: Attempted to change to a directory named "readme," but failed because "readme" is a file. This error taught me to pay attention to the nature of directory listings.

- ```cat readme```: Displayed the contents of the "readme" file, which was crucial for obtaining the password to advance to the next level.

***Password***: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

<br>

### Level 1 → Level 2 (15/09/2024)

![Level1-2](../../images/level%201-2.png)

### Mistake I made: 
 I mistakenly used ```cat -``` thinking it might help display file contents, but it was the wrong approach as it read from standard input instead. I then correctly used ```cat ./-``` to specify reading directly from a file named ```-```

Password: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

<br>

### Level 2 → Level 3 (15/09/2024)

![level 2-3](../../images/level2-3.png)

- ```cat "spaces in this filename"```. Enclosing the filename in quotes is essential because it ensures the command treats the spaces as part of the filename

Password: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx


### Level 3 → Level 4 (15/09/2024)

- ```cd inhere```: navigate to the directory named "inhere"
- ```ls -la``` to list all contents of the directory, including hidden files
- ```cat ...Hiding-From-You```

**Password:** 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

### Level 4 → Level 5 (15/09/2024)

![Level4-5](../../images/Level4-5.png)

- ```cd``` inhere to navigate into the directory "inhere".
- ```ls``` to list the files in the directory, which revealed multiple files.
- ```file ./*``` to determine the types of all files in the directory. This command showed that most files were of type "data", except for one, "file07", which was of type "ASCII text".
- ```car ./file07``` displayed password

**Password:** 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

<br>

### Level 5 → Level 6 (15/09/2024)

![5-6](../../images/level5-6.png)

- ```cd``` inhere to enter the specified directory.
ls to list all subdirectories under "inhere", which revealed multiple directories named "maybehereXX".

- ```file ./*``` to confirm that all listed items were directories.

- ```find . -size 1033c``` to locate files exactly 1033 bytes in size within these directories. This command returned "./maybehere07/.file2" as the match.

- ```cat ./maybehere07/.file2``` to display the contents of the identified file, which held the password for the next level.

**Password:** HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

<br>

### Level 6 → Level 7 (15/09/2024)

![level6-7](../../images/level6-7.png)

### Level Goal
The password for the next level is stored somewhere on the server and has all of the following properties:
- Owned by user `bandit7`
- Owned by group `bandit6`
- 33 bytes in size

### Steps Taken
To achieve the goal, I followed these steps:

1. **Handle Permission Errors:** Due to numerous 'permission denied' errors, I redirected these errors to `/dev/null` using `2>/dev/null` to keep things clean.
   
2. **Find Command Execution:** Executed the command to search for the file:
   ```bash
   find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

3. ```cat /var/lib/dpkg/info/bandit7.password``` 

## Bandit Level 7 → Level 8

![level7-8](../../images/level7-8.png)

### Level Goal
The password for the next level is stored in the file `data.txt` next to the word "millionth".

### Steps Taken
To retrieve the password, I followed these steps:

1. **List Files:** First, I listed the files in the directory to confirm the presence of `data.txt`:
   ```bash
   ls
2. ```grep "millionth" data.txt``` located the line containing the word "millionth", which had the password next to it 





