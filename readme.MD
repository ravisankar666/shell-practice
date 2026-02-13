## Numeric comparison

Operators are eq,ge,gt,le,lt,ne

eq ----> equal to
ge -----> greater than or equal
gt ------> greater than
le -------> less than or equal to
lt -------> less than
ne -------> not equal to

## String Comparison

String comparison can be done using test,if..else..elif commands.

string1=string2
string!=strinfg 
-z string


## function

take some input's and given some output
1.call it 
2.provide input's if required

syntax

func_name(){

}

func_name()

## file attribites comparison

-b file : file exists and is block special
-c file : file exists and is character special
-d file : file exists and is a directory
-e file : file exists
-f file : file exists and is a regular file 
-g file : file exists and is set-group-id
-G file : file exists and owned by effective group ID.

#### example:-

[ -a /etc/reslov.conf ] && echo "File found" || echo "not found"

[ -b  /dev/scd ] && echo "block special file found" || echo "block special file not found"

#!/bin/bash
#Directory Creation
DEST=/tmp/myscript/mydir
[ ! -d$DEST ] && mkdir -p "$DEST" || echo "$DEST" already exists.

## shell command parameter

#### example :-

#!/bin/bash

echo `uptime`
echo "The Name of my name script : $0"
echo "The value of first argumnet : $1"
echo "The value of second argumnet : $2"
echo " The value of Third argumnet : $3"
echo "Total number of argumnet passwd to the script : $#"

each argument has been denoted by some positions .

Print all the argumnet's passed to the script :- $@ , $ *
Total number of argument's :- $#

## Loop

A loop is a powerful programming tool that enable you to execute a set of commands repeatedly.

Bash shell can repeat particlular instruction again and again, until particular condition satisfies, A group of instruction that is executed repeatedly is called a loop.

TYPE OF LOOPS :-
==============

The for loop
The While loop

Method 1  
 for Varname in list
 do
 command1
 command2

 ..
 done

Method2: bash for loop using c like syntax

The second form of the for loop is similar to the for loop in C programming language , which has there expressions (initization,condition and updation)

for (( expr1;expr2;expr3 ))
do
command1
command2

...
done

#### example:-

[ $# -eq 0 ] && { echo "you have not passed any argument"; exit 1;} 

for i in $*
do
echo 
echo "< $i >"
[ -f $i ] && cat $i || echo " $i file not found"
echo "-----------------------------"
done


## Pipleline

Pipe is used to combine two or more command and in this the output of one command act as input to another command , and this command output may act as  input to the next command and so on.

Syntax:-

command_1 | command_2 | command_3 | command_4 |....|command_N

#### Example:-

ls -ltr | less
ls -ltr | wc -l
ls -ltr | head -n 10
ls -ltr | tail -n 10

## tee command:-

what does tee command ?

it take the output and send it to two places:

1.the screen
2.A file

#### example:-

ls | tee list.txt | less

ls -ltr | head -n 10 | tee /tmp/abc

tee command basicly use in pipe line's only

## file discriptors

0 -----> input ,keyboard
1 ------> output , Terminal
2 -------> error , terminal
3 ---------> file  , none

> ------------> output
< -------------> input

 user defined file descriptor

 exec 7> /tmp/output.txt
 echo "hello,how are you doing ?" >&7
 uptime >&7
 cat /tmp/out.txt

note:-
everything store in out.txt file .

#### example:-

#!/bin/bash
exex 5> /tmp/abc.txt
echo "this is my new file" >&5
cat /etc/redhat-release >&5
uptime >&5
-------------------------------

input example

exec 9< /etc/abc

cat <&9 ---this command show file content

this is my input file

close 9 discriptor

exec 9<&- ----> this close 9 discriptor

## AWK 

awk is a programming language which allows easy manioulation of structrued data and the generation of formatted reports.AWK stand for the name of its autors "aho , weinberger, and kernighan

awk is mostly used for pattern scanning and processing . it search one or more files to see if they contain lines that matches with specified pattern and then perform associated action.

example :-

cat awsfile | awk ' {print $2} '

$2 ---> second colom

if you wanna search particular word 

cat awkfile | awk ' /god/ '


awk '<colom-number>  ~/word/' <-file_name->

search for number more than 200

awk '$1 > 200' awkfile

## Sed

Sed stand for stream editor and it can perform lot's of function on file like serching find and replace , insertion and deletion. Though most common use of SED command in UNIX,LINUX i=s for substitution or for find and replace. by using SED
you can edit files even without opening it, which is much quicker way to find replace something in file, than first Opening that file in VI Editor and thwn shanging it.


