#command to check the command
type -a <command name>

for SHell build-in get help

# get help
help test

# Command to display UID
UID

#command ro get name of the user
id -un

# command to execute a command and assigned value to a variable
# Any command execution result feeds to a var, use $()
NAME=$(id -un)

# replace the value of a var in a srting, in this case the value of a variable is replaced

echo "the value of UID is ${UID}"

# To get help about a command
help <command_name>
man <command_name>


# to know exit status of last executed command

"${?}"

# if statements tests help
help test

#comparison in if statements

eq, ne etc for arithmetic operation
=, != etc for string compariosn

# Create an account in local system

# Ask for input

help read | less
read -p 'type something: ' THING
echo "@{THING}"

# Create the user
useradd
type -a useradd
man useradd

#create the user with home directory set up
user add -m -c

#lOg in as a new user

sudo su - <username>

# Set password for the user
passwd

read -p 'type the password' PASSWORD
echo "${PASSWORD}" | passwd --sdin "$(USER_NAME)"

#Force password change for the user
passwd -e

# get all process
ps -ef

# which command - it tells where the command stored in the linux system
which useradd

# locate -very useful command to find the binaries of a command. But it is
# available in linux system in a DB after everyday merging process executed.
# the the commands for system adminitration is located in sbin folder, whereas the normal one
# will be in bin
locate useradd
sudo locate useradd # when you have no access to host machine
#to updte the db, sudo updatedb
sudo updatedb

# Last executed commands
sudo !!

# Find command, it runs real time, find searches recusrively
man find
find /usr/sbin/ -name userdel
find / -userdel

# delete the user
sudo userdel <username>

# expire or lock the user account, dont delete it
man chage

# UID : get the current user id

# get list of users
cat /etc/passwd
id <name-of-user>

# where the the Uid number range is kept
nano /etc/login.defs
