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

#@@@ Export and send data between bash scripts:
#message="hi i am learning bash script this messege from hello script"
#export message
#./second_script.sh

#@@@ Work with Strings:
#echo "Enter str1:"
#read str1
#echo "Enter str2:"
#read str2
#
#if [ "$str1" == "$str2" ];then
#    echo "Strins are same"
#elif [ "$str1" \< "$str2" ];then
#    echo "Str1 is samller than str2"
#elif [ "$str1" \> "$str2" ];then
#    echo "Str1 is grater then str2"
#fi
#
#echo $str1$str2
#echo ${str1^}                                #Convert string to lowercase
#echo ${str1^^}                               #Convert string to Uppercase
#echo ${str1^l}                               #Convert string to titecase

#@@@ experesions:
#a=5
#b=3
#echo $(( a+b ))
#echo $(( a-b ))
#echo $(( a*b ))
#echo $(( a/b ))
#echo $(( a%b ))
#
#echo $(expr $a + $b )
#echo $(expr $a - $b )
#echo $(expr $a \* $b )
#echo $(expr $a / $b )
#echo $(expr $a % $b )

#@@@ Array:
#names=('pouya' 'pariya' 'mehdi' 'hasan')
#echo ${names[@]}
#echo ${names[0]}
#unset names[2]
#names[3]='ali'
#echo ${!names[@]}                   #indexis of array
#echo ${#names[@]}                   #Length of array


#@@@ Functions:
#function func(){
#    echo $1 $2 $3
#}
#func 1 88 9

#@@@ file and directories:
#mkdir -p newfolder
#if [ -d newfolder ];then
#    echo "folder exist"
#else
#    echo "folder doesn't exist"
#fi

#echo "Enter filename:"
#read filename
#if [ -f newfolder/$filename ];then
#    echo "file exist"
#else
#    touch newfolder/$filename
#    echo "file has been created"
#fi

#echo "this text should be append to file">>newfolder/$filename
#echo "this text should be append to file 2">>newfolder/$filename
#echo "this text should be append to file 3">>newfolder/$filename

#while IFS= read -r line
#do
#    echo $line
#done < newfolder/$filename

#@@@ Select loop
#movies=("Batman" "Beautiful mind" "Parasite" "5 angry")
#select movie in "${movies[@]}"
#do 
#    echo  You have selected $movie 
#    case $movie in
#        'Batman')
#            echo 'Bataman selected';;
#        'Beautiful mind')
#            echo 'Beautiful mind selected';;
#        'Parasite')
#            echo 'Parasite selected';;
#        '5 angry mans')
#            echo '5 angry man selected';;
#        *)
#            echo  Error! Please enter number between 1-"${#movies[@]}"
#    esac
#
#done

#@@@ Waiting for user input
#echo "Press any key to continue"
#while [ true ]
#do
#    read -t 3 -n 1
#    if [ $? = 0 ];then
#        echo "You have terminated the script"
#        exit
#    else
#        echo "waiting for your input"
#    fi
#done

#@@@ TO Watch file and directories you can you inotify 

#@@@ use grep to find and search for stirngs it is powerfull 
# grep -i -n -c -v $filename


#@@@ AWK: awk is tool and program to report text based files

# awk -F ";" '{print $1 $2}' Hello.txt            # default delimetere is ' ' os -F change it
# awk 'BEGIN{FS=";"; OFS="__"} {print $1,$2}' Hello.txt #OFS is output column delimeter
# df | awk '/\/dev\/loop/'                           # searching for a pattern
# awk -F ";" '{if($1=="Username") print $1}' Hello.txt
#awk -F ";" '$1 ~ /^[a,b]/ {print $0}' Hello.txt        # if first column start with 'b' or 'a' return all row

#@@@ SED: tool for subsitute text and strings
# sed /hello/salam/g $filename
# cat text.txt | sed /hi/hey/g
# sed -i /hello/salam/g $filename                       #this is change file content also

#@@@ debuging:
#for debuging you can use 3 method :
#1. run script with -x 
#2. inser -x in the first line of script :  # /usr/bin/bahs -x
#3. use set -x and set +x keyword:
#set -x 
#echo "This section will be output as debuging mode"
#var=55
#echo df | awk -v num=$var 'BEGIN{OFS="_";FS=","} match($1,num) {print $1,$2}'
#set +x

