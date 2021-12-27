openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=example.com' -keyout example.com.key -out example.com.crt
openssl req -out yhaing.top.csr -newkey rsa:2048 -nodes -keyout yhaing.top.key -subj "/CN=yhaing.top/O=yhaing organization"
openssl x509 -req -days 365 -CA example.com.crt -CAkey example.com.key -set_serial 0 -in yhaing.top.csr -out yhaing.top.crt
