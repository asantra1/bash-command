# tee
tee -a
echo "10.9.8.11 server01" | sudo tee -a /etc/hosts # we can not directly re-direct, because sudo
# does not be used for >>

#ssh key generation to connect to server from admin.
ssh-keygen
# copy the ssh public key to the remote server01
ssh-copy-id server01 # password for vagrant is vagrant

# if put ; then the next one wil be treated as another command
ssh server01 hostname; hostname # the first one will be executed in server01, next one host machine
ssh server01 'hostname, hostname' # both will be run on server01s

ssh server01 ps -ef | head -3
ssh server01 'ps -ef | head -3'

# man ssh check for exit status of remote command 255 for error
