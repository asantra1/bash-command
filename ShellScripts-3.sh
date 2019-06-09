# I/O redirection
# Standard input ( keyboard or pipe |)
# Standard output
# Standard error
# Redirect STDOUT to a file
FILE='/tmp/data'
head -2 /etc/passwd > "${FILE}"

# Redirect standard input
read LINE <"${FILE}"
read LINE <0 "${FILE}"

# any command accepts a stdin input, the < can be used

# Redirect the output and Append
echo "another-line" >> password

# File descripter
# FD 0 - stdin
# FD 1 - STDOUT
# FD 2 - STDERR
# Linux treats everything as files, even keyboard, monitor , mouse all are files
# this file descripter has been used automatically in case of standard input/output
# output from a file, command, program, script, or even code block within a script  M>N # M default 1 or file
# descriptor, for error 2, N is the file name
# M>&N - &N is the file descriptor.
head -n2 /etc/host fakefile 1>file.out 2>&1 # redirect both standard output and error to file.out
head -n2 /etc/host fakefile &> file.out

FILE='/etc/hosts'
read LINE < "${FILE}"
read LINE 0< "${FILE}"

head -n3 /etc/file1 /etc/file2 /fakefile 1> head.out 2>head.err

# when we need to append the vagrant_data
head -n3 /etc/file1 /etc/file2 /fakefile 1>> head.out 2>> head.err

# Pipe vs redirection. Pipe takes standard output to pass as an inout to next commands
# It can not flow error output by default.
head -n3 /etc/file1 /etc/file2 /fakefile | cat

# feed error output to Cat using Pipe
head -n1 file.txt 2>&1 | cat
head -n1 file.txt |& cat

# Null device, /dev/null , if redirected to this, it just throw away
head -n1 /fakefile 2> /dev/null
echo "${?}"

head -n1 /fakefile &> /dev/null #send both the error and standard output
echo "${?}"
