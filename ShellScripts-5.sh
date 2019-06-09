# cut and awk command.
man cut
cat /etc/passwd | cut -d : -f1 # split the line using delimeter : and then take the first field (f1)

#awk : pattern maching from the line used multiple character as delimeter
awk -F 'DATA:' '{print $2}' people.dat
cat /etc/passwd | awk -F ':' -v OFS=',' '{print $1,$3}'
#lst field is $NF

# Active internet connection
netstat -nutl

#Sort and unique commands
sort /etc/passwd
sort -r /etc/passwd
cat /etc/passwd | cut -d : -f 3 | sort -n # sort numerically

# disk usage sudo du
sudo du /var
sudo du -h /var | sort -h

# sort numeric -n
cat /etc/passwd | cut -d : -f4 | sort -n

# sort unique -u
cat /etc/passwd | cut -d : -f4 | sort -un

cat /etc/passwd | cut -d : -f4 | sort -n | uniq # uniq works only on sorted list

cat /etc/passwd | cut -d : -f4 | sort -n | uniq -c # uniq with count

# word, line, byte count : wc
man wc

# count of the line matches
grep bash /etc/passwd | wc -l
grep -c bash /etc/passwd

# sort based on key
cat /etc/passwd | sort -t : -k 3 -n

# find files
find /usr/sbin/ -name userdel
find / -name userdel
