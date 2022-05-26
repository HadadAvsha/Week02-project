#this is a password valditaion script

#get the content from terminal
PASSWORD=$1
#while reading '-f' in PP $1 ready to accept file path and assian to PP $2
if [ $1 == -f ]  
then
file=$2
#checks if file exists
    if [ -f $file ] 
    then
    #assign files content to var
    PASSWORD=`cat $file`
    else
    echo 'file does not exists or invalid path'
    fi
else
PASSWORD=$1
fi

#count the charecter length of the variable password
passLen=${#PASSWORD}

#counting passed tests
counter=0

#text colors
GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[1;37m'

#cheking if password is greater or equel to 10 charecters
checkLen(){
if [[ $passLen -ge 10  ]]
then
#displaying green text and then reverting back to white 
echo -e "$GREEN Password contain 10 charecters or mroe $WHITE"
#add 1 to count if success
counter=$((counter+1))
else
echo -e "$RED [-] Password lenght must be 10 charecters or more $WHITE"
fi
}

#checking if password contains upper or lower case letters AND a number
checkAN(){
if [[ $PASSWORD =~ [a-zA-Z] && $PASSWORD =~ [0-9] ]]
then
echo -e "$GREEN Password is alphanumeric $WHITE"
counter=$((counter+1))
else
echo -e "$RED [-] Password must be alphanumeric $WHITE"
fi
}

#checking if password contain upper AND lower case letters
checkUpperLower(){
if [[ $PASSWORD =~ [A-Z] && $PASSWORD =~ [a-z] ]]
then
echo -e "$GREEN Password contain upper and lower case letters $WHITE"
counter=$((counter+1))
else
echo -e "$RED [-] Password must contain upper and lower case letters $WHITE"
fi
}

#calling the functions inside one main function
main(){
checkLen
checkAN
checkUpperLower

if [[ $counter == 3 ]]
then
echo -e "$GREEN  $? $WHITE"
else
echo -e "$RED  $? $WHITE"
fi
}

#run main function
main

























