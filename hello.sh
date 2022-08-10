#!/usr/bin/bash
#C:\\Progra~1\\Git\bin\\bash.exe

#@@@ ECHO AND COMMENTING
# echo "Hello bash scripting" 
# echo "Hello bash scripting" > helle.txt      Write to File
# cat > Hello.txt                              Write to File from Terminal by pres ctl+D
# cat >> Hello.txt                             Append to File from Terminal by pres ctl+D

: '
this is multi line comment
this is multi line comment
this is multi line comment'                    #Multi line commenting

#@@@ HEREDOC                                     
# cat << heredoc                    
# Hello, how are you this is usage of heredoc
# and this is another thest line
# enjoy your life
# heredoc                                        #Usage of Heredoc

#@@@ CONDITIONAL STATEMENTS
# count=10
# if [ $count -gt 11 ] # -eq:equal, -ne:not equal, -gt:grather than, -lt:lower than
# then
#     echo "the condition is true"
# else 
#     echo 'the condition is false'
# fi

# count=10
# if (($count == 11)) #>,<,!=
# then
#     echo "first the condition is true"
# elif (($count >=10))
# then
#     echo "second the condition is ture"
# else 
#     echo 'the condition is false'
# fi

# age=10
# if [ $age -gt 18 ] && [ $age -lt 40 ]             # And:&&, Or:||
# then
#     echo "Age is ture"
# else
#     echo "Age is false"
# fi

# if [[ "$age" -gt 18 && "$age" -lt 40 ]]           # And:&&, Or:||
# then
#     echo "Age is ture"
# else
#     echo "Age is false"
# fi

# if [ $age -gt 18 -a $age -lt 40 ]                   # -a:And operator, -o:Or operator
# then
#     echo "Age is ture"
# else
#     echo "Age is false"
# fi

#@@@ LOOPS
# car=$1
# case $car in
#     "BMW" )
#         echo "It is Bmw";;
#     "TOYOTA" )
#         echo "It is Toyota";;
#     * )
#         echo "Unknown car name";;
# esac

# number=1
# while [ "$number" -le 10 ]
# do
#     echo "$number"
#     number=$(( $number+1 ))
# done

# number=1
# until [ "$number" -le 10 ]    #Loops will run until the condition would become True
# do
#     echo "$number"
#     number=$(( $number+1 ))
# done

# for i in 1 2 3 4
# do
#     echo "$i"
# done

# for i in {0..20..5}  # {start..end..increment}
# do
#     echo "$i"
# done

# for ((i=0; i<5; i++ ))
# do
#     echo $i
# done

# for (( i=0; i<10; i++))
# do
#     if [ $i == 5 ]
#     then
#         break
#     fi
#     echo $i
# done

# for (( i=0; i<10; i++))
# do
#     if [ $i == 5 -o $i -eq 7 ]
#     then
#         continue
#     fi
#     echo $i
# done

#@@@ INPUTS
# echo $0 $1 $2 $3
# args=("$@")                                        #An array
# echo ${args[0]} ${args[1]} ${args[2]}
# echo $@
# echo $#                                            #Length of array

#@@@ READ FILE
# while read line
# do
#     echo $line
# done < "${1:-/dev/stding}"                          #STDIN: Standard input

# ls -al 1>stdout.txt 2>stdout_error.txt              #Save standard output and standard output error in files
# ls -al >stdout.txt                                  #Save standard outpur in file and show error in terminal
# ls +al >stdout.txt 2>&1                             #Save standard outpur and standard output in same file
# ls -al >& stdout.txt                                #Save standard outpur and standard output in same file

