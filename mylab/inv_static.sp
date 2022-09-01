####### Inverter static Characterstics #######
* include  model file 

.LIB "/home/debasish/cad/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib" nom
.TEMP 27

*.PARAM wn=5u
*.PARAM wp=3*wn
*.PARAM lc=1u

*Define supply 
vsupply vd 0 DC 2.5 
vin   in 0 DC   2.5


*Define MOSFET 
MP1	 out 	in 	vd 	vd	scmosp 		w=3u   	l=1u  	m=1
MN1 	out	in 	0	0	scmosn		w=1u	l=1u	m=1


MP2      out2    in      vd      vd      scmosp          w=3u    l=1u    m=1
MN2     out2     in      0       0       scmosn          w=3u    l=1u    m=1

MP3      out3    in      vd      vd      scmosp          w=9u    l=1u    m=1
MN3     out3     in      0       0       scmosn          w=1u    l=1u    m=1


*sweep input voltage

.dc vin 0 2.5 0.001

.CONTROL
RUN
PLOT v(out) v(out2) v(out3) vs v(in)
.endc
.end

