# Generate certificates
make gen

(Enter common names, for example ca.com for root CA, and 127.0.0.1 for given server)
** Also I am not sure if it's correct

# Start server (where the second parameter is used to fetch certificate name):
./server client

# Start client:
./client client


For now I am getting:
```elixir

handling new socket
handle failed on ssl_accept with: {tls_alert,
                                   {unknown_ca,
                                    "TLS server: In state wait_cert at ssl_handshake.erl:1838 generated SERVER ALERT: Fatal - Unknown CA\n"}}
ok
=NOTICE REPORT==== 24-Aug-2020::13:21:16.598510 ===
TLS server: In state wait_cert at ssl_handshake.erl:1838 generated SERVER ALERT: Fatal - Unknown CA
```
