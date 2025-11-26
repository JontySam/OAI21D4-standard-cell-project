** Run OAI file

.TEMP 25
*.OPTION INGOLD=2 ARTIST=2 PSF=2 MEASOUT=1 PARHIER=LOCAL PROBE=0 MARCH=2 ACCURACY=1 POST RUNLVL=5
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file 
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

.INCLUDE OAI_Load4.sp

* Voltage sources
V1 A1 0 PULSE(0 0.8 0p 25p 25p 50p 150p)
V2 A2 0 PULSE(0 0.8 70p 25p 25p 50p 150p)
V3 B 0 PULSE(0 0.8 20p 25p 25p 150p 350p)
V4 VDD 0 0.8V
V5 VSS 0 0V

* Small 1fF output capacitance for realistic simulation
*C1 ZN 0 2fF
.OP
.TRAN 0.1p 2000p

*.DC V1 0 0.8 0.001

.MEASURE TRAN thl TRIG V(a) VAL=0.35 TD=100p RISE=2 TARG V(y) VAL=0.35 TD=100p FALL=2
.measure tran freq param= '20/t1'
.measure power rms power
.END
