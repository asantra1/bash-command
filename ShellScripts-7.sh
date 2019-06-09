# 2048-bit key, saved to file named mykey.pem
openssl genrsa -out mykey.pem 2048

# Create the rsa public key
openssl rsa -in mykey.pem -pubout > mykey.pub

# Encrypt using public key

echo 'some string' | openssl rsautl -inkey mykey.pub -pubin -encrypt -oaep > encrypted.txt

# Decrypt using private key
cat encrypted.txt | openssl rsautl -inkey mykey.pem -oaep -oaep -decrypt

# Create a Certificate self signed

openssl req -x509 -nodes -days 365 -sha256 -newkey rsa:2048 -keyout mycert.pem -out mycert.pem

# extract public cert 

openssl x509 -outform der -in mycert.pem -out pub-cert.crt

# Encrypt using public cert

echo 'some string' | openssl rsautl -inkey pub-cert.crt -certin -encrypt -oaep > encrypted-with-cert.txt