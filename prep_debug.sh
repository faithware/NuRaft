cd build/
make 
ssh -p 50022 root@localhost "killall -KILL gdbserver"
#ssh root@localhost -p 50022 rm echo_server
#scp -P 50022 examples/echo_server root@localhost:/root/
ssh -p 50022 root@localhost -o StrictHostKeyChecking=no "gdbserver :1234 /root/echo_server 2 localhost:20000"
sleep 3