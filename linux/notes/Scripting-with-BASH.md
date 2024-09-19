# Scripting with Bash
## The 'Shebang' Line

```#!/bin/bash``` tells computer to use bash script even if you are using zsh
-

## Variables
- Allows you to store and manipulate data 
- e.g. variable=name
-  To access variable: ```$variable``` 
- Can use variables within strings

## Comments
- Add explanation using #

## Parameters
Inside .sh file:
- ```echo "Parameter 1: $1"`` # $1 is a variable that grabs the value while the value is passed into command line
- e.g. user runs file with the argument ```apple```
- It will say Parameter 1 is apple

## Arithemtic expansion
```$(( expression ))```
for e.g. you want to add the numbers, and you have num1&num2 and they were both assigned values, inside the brackets where it says expression, you would write ```num1+num2```

## e.g.

- ```num1=2```
- ```num2=4```
- ```result=$((num1+num2))```

```echo "$num1 + $num2 is equal to $result"```

## Arithemtic expansion with **Parameters**

## e.g.
- ```num1=$1```
- ```num2=$2```
- ```result=$((num$1+num$2))```

```echo "$num$2 + $num$2 is equal to $result"```

