#!/usr/bin/env bash

fileOne=the-environment-1.txt
fileTwo=the-environment-2.txt
fileThr=the-environment-3.txt
# 18 rows and 50 columns works for fontsize=\footnotesize
width=50

echo "$ echo $<tab><tab>" > $fileOne
echo "" >> $fileOne

echo "$ echo \$USER" >> $fileOne
echo $USER >> $fileOne
echo "" >> $fileOne

echo "$ export" >> $fileOne
echo "" >> $fileOne

echo "$ export HELLO=\"hello\"" >> $fileOne
echo "$ echo \$HELLO" >> $fileOne
export HELLO="hello"
echo $HELLO >> $fileOne
echo "" >> $fileOne

shopt -s expand_aliases
echo "$ alias ls='ls --color=auto'" > $fileTwo
echo "" >> $fileTwo
echo "$ alias work='cd projects/.../some_directory'" >> $fileTwo
echo "" >> $fileTwo
echo "$ alias ..='cd ..'" >> $fileTwo
echo "" >> $fileTwo

alias ls='ls --color=auto'
alias work='cd projects/.../some_directory'
alias ..='cd ..'
echo "$ alias" >> $fileTwo
alias >> $fileTwo
echo "" >> $fileTwo

echo "$ history" > $fileThr
echo "$ # Execute last command" >> $fileThr
echo "$ !!" >> $fileThr
echo "" >> $fileThr
echo "$ # Execute last command which starts with" >> $fileThr
echo "$ #  with an additional flag" >> $fileThr
echo "$ !ls -l" >> $fileThr
echo "" >> $fileThr
echo "$ # Execute specific command in history" >> $fileThr
echo "$ !<number>" >> $fileThr
echo "" >> $fileThr
echo "$ # Search history for last command which contains" >> $fileThr
echo "!?-l" >> $fileThr
echo "" >> $fileThr
#echo " Get a specific argument of a previous command in history" | fold -w $width | sed 's/^/#/' >> $fileThr
#echo "echo !?hello.py:1" >> $fileThr
#echo "" >> $fileThr
