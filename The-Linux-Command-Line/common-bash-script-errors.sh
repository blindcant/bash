#!/bin/bash -x
# the -x enables tracing, which prints the commands after expansion.
# PS4 has been modified in .bashrc with export PS4='$LINENO + ' to add line numbers

# empty variable leads to shell expansion
#number=
number=1

# missing ; after [test] or the [[compound command]]
#if [ $number - 1]  then
#if [ $number - 1] ; then
# the rule is always double quote variables and command substitutions unless word splitting is needed
if [ "$number" - 1] ; then
	# missing quotes, syntax highlighting helps to notice this quickly.
	#echo "Number is equal to 1.
	echo "Number is equal to 1."
else
	echo "Number is not equal to 1."
fi
