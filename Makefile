gen:
	openssl req -new -newkey rsa:1024 -nodes -out ca.csr -keyout ca.key
	openssl x509 -trustout -signkey ca.key -days 365 -req -in ca.csr -out ca.pem
	openssl genrsa -out client.key  1024
	openssl req -new -key client.key -out client.csr
	openssl x509 -req -days 365 -in client.csr -CA ca.pem -CAkey ca.key -set_serial 01 -out client.crt

clean:
	 rm -f *.key *.csr *.pem *.crt


