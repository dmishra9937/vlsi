##################interconnect parasitics###########

*Pulse input 	     delay    pulse width
vin in 0 pulse 0 2.5 2n 1p 1p  15n 30n

*lUMPED MODEL defination 

Rl in outl  15k
Cl outl 0    192f

*T-model defination 

Rt1 in n1 7.5k

Rt2 n1 outt 7.5k
Ct n1 0 192f

* Pi-Model defination

Rp in outp 15k
Cp1 in 0 96f

cp2 outp 0 96f

*Distributed Model Defination 

Rd1  in nd1 1.5k
Rd2  nd1 nd2 1.5k
Rd3  nd2 nd3 1.5k
Rd4  nd3 nd4 1.5k
Rd5  nd4 nd5 1.5k
Rd6  nd5 nd6 1.5k
Rd7  nd6 nd7 1.5k
Rd8  nd7 nd8 1.5k
Rd9  nd8 nd9 1.5k
Rd10 nd9 outd 1.5k


Cd1  nd1 0  19.2f
Cd2  nd2 0  19.2f
Cd3  nd3 0 19.2f
Cd4  nd4 0 19.2f
cd5  nd5 0 19.2f
Cd6  nd6 0 19.2f
Cd7  nd7 0 19.2f
Cd8  nd8 0 19.2f
Cd9  nd9 0 19.2f
Cd10 outd  0 19.2f


.tran  5p 35n

.control
run
plot V(in) v(outl) v(outt) v(outp) v(outd) 

.endc

.measure tran tdiff trig v(in) val=1.25 rise=1 targ v(outl) val=1.25 rise=1 
.measure tran tdiff trig v(in) val=1.25 rise=1 targ v(outd) val=1.25 rise=1
.end
