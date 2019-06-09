# case statement
help case
man bash #and search for case and pattern matching

# Functions
# local variable
local MESSAGE ="${@}" # this will contain the arguments. ${1}, ${2}

# global variable
VERBOSE='true'

# readonly variable, so the function can not change the value of the variable
readonly VERBOSE='true'

#logger
man logger
logger 'hello anirban, how are you!'
sudo tail /var/log/messages

# exit vs return - exit quit the entire script whether it is inside a function or not.
# return quit the function

# getopts - get the options one by one using while loop. : after the parameters for
# mandatory one

while getopts kl:m OPTIONS
do
  echo "${OPTIONS}"
done

# bash does not support the float by default.bc needs to install for that
type -a bc
echo ' 6 /4 ' | bc -l
((NUM += 5)) # NUM = NUM + 5

#let : let arg [arg ...] Evaluate arithmetic expressions.
let NUM=2+3
echo ${NUM}

#expr : evaluate an expressions
expr 1 + 1 # note that there will be spaces to both side of plus

# OPTIND

# tar command for archiving
type -a tar
man tar
ar -cf archive.tar foo bar # c for create and f for file
# Create archive.tar from files foo and bar.
tar -tvf archive.tar # t for list v  for vervose and f file
# List all files in archive.tar verbosely.
tar -xf archive.tar # x for extract and f for file
# Extract all files from archive.tar.
tar -zcvf file.tar.gz /usr/video # create tar file and zip this.
# z : for Zip, c : create, v : verbose, f : file

tar -ztvf file.tar.gz #list the files inside archive
taf -zxvf file.tar.gz

# Zip the tar file
gzip
gunzip
