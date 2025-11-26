** Generated for: hspiceD
** Generated on: Mar 23 18:18:29 2025
** Design library name: OAI21D4BWP16P90
** Design cell name: OAI_drive4_Load4
** Design view name: schematic




** Library name: OAI21D4BWP16P90
** Cell name: OAI_drive4
** View name: schematic
.subckt OAI_drive4 a1 a2 b vdd vss zn
m2 zn a2 net1 vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=3 sa=90e-9 sb=90e-9
m1 zn b vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=2 sa=90e-9 sb=90e-9
m0 net1 a1 vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=3 sa=90e-9 sb=90e-9
m5 net2 a2 vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=3 sa=90e-9 sb=90e-9
m4 net2 a1 vss vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=3 sa=90e-9 sb=90e-9
m3 zn b net2 vss nch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=2 sa=90e-9 sb=90e-9
.ends OAI_drive4
** End of subcircuit definition.

** Library name: OAI21D4BWP16P90
** Cell name: OAI_drive4_Load4
** View name: schematic
xi4 zn vss vss vdd vss zn4 OAI_drive4
xi3 zn vss vss vdd vss zn3 OAI_drive4
xi2 zn vss vss vdd vss zn2 OAI_drive4
xi1 zn vss vss vdd vss zn1 OAI_drive4
xi0 a1 a2 b vdd vss zn OAI_drive4
.END
