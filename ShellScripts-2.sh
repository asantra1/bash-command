# A randon mumber as a password

RANDOM
man bash and search for RANDOM

# Add date portion to generate password
DATE
man DATE

# Running most recent command
!v

# Create hash SHA1SUM for a file
sha1sum
sha256sum
man sha256sum

#Append text to file

echo "1" >> file.txt

# show first part of file
head
man head
echo "Anirban" | head -c(3)

# generat random permutations
shuf
man shuf

#fold command for weap input line to make a fixed length

#Append special characters to the password
SPECIAL_CHAR = $(echo '@#$%^&*' | fold -w1 | shuf | head -c1)

# Some commands
hash
which
basename #strips the directory portion from the full path
dirname #return the directory of the path

#Get the commands and arguments
${0} # gives the first part of the commands , full path with the program or command dirname
${1} # first argument of the command

#number fo parameters have been passed
 NUMBER_OF_PARAMETERS="${#}"

 #Return code from the last command called
 ${?}
 # Use for to loop
 help for

 # List of arguments passed from the caller

 "${@}"

 for USER_NAME in "${@}"
   echo "${USER_NAME}"
 done

 # treat all the argumens as a single
# man search special parameters
 "${*}"

 # Shift and while loop
 # When the sh file is being executed, mentioned code-01.sh Arg1 Arg2 Agr2

echo "${1}"
echo "${2}"
echo "${3}"

while [[ x -eq 1 ]]
do
  echo 'looping'
  x=7
done

# true and sleep
man true
man sleep
