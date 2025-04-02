// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 11:26:34 2025
// Host        : S20223108 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_20,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_mode = "slave sclr_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_mode = "master thresh0_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_20 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
r0E6f/qStSo0L2XbZz6KP7CqeYXCETL3wR669SVbGoLGNIzTkZ6orFMdB9ZvGBno4RC5Lg8Ei+AD
Vrkm6X5yrqdK0NiOUGrn3CmD7aV8cqyvWcf1RVTLgJm5idrjKCSuk1oGBjjdXfnpQXq7oSuhFNsv
i1d+c5AVwH7AAhZpsog=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rh5vRTB9uHGphg/2TQRGSUllQnVyOzed7Tqurp4+POeHkBV+zLAt+XkEUKdp+QjtoVe3oDKmB49C
ozv44o0duc0mySW3GSTsraAP5y/k7iQyOeqriuLdPUzh130WY3C61pnf8CeJy2u1Nvsd6F1BbzHn
eJFSd3Bkbt10dqyc7B04v2xJMm/wuiS6A1yndbJa8BMjKLzuA/xQWXFt3lxkpq37ZB2j0a6wRLLt
ZjhZrlfYJa9ZB/UCMEXaClWSIu77lt4sU32n+OjB+pmI6P1QB51GfsLmb5TTm+9ugfG6vAvCZ6h6
IV/wjFTCBZClcrJDQDMxyDI0SAUqMpsgQSnW0g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
cBjlrdzQZ42DM3rkvoPBY2qDzamGJBU3dgSncIbCQoTts5j3TnPoSsJ20h9rypdw89tnPL3b2ERS
osaBJ8761pFg9Oecxgsb7AiTKa3qe7bwA9u6qFBo4HDOjE2BlabxXOoAHiQDsL5qgOnmabBdBRnb
CdToOAWUZTHmSitNdhU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dTM7MXkvzEVyjLMUnneQU2c0QpxD5dsgAS2h2nM/ALFjAZUY5hUzrMJNktw3+8vuCxqhRf3ylqdh
Il2sRsU+dNrWCE3XtJ9RDPGxS7Y8gxU6Md4Zv7H3kJGj7sJAtNYPcv+00QEAWd0nlkTb72QU5Yzv
7NCP/fiR4H5zTFdbkL9l3zYT0+DeLSDaQdH5dJYDZMrjonAYWP9/NLoxGPUL95DlTTam/e1rH+/S
SCNDAKMyf+trnncY5UPLg6tTiS6Zx6zmhgKm1UgvgH+BQ73dE/tN0v5aQiao0TR0OHazCeQNJCNc
02cU0ujXaQ5XPf3W0cDpigQLoSVaommJIIewFA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W0Yk42XCv7VE1G3sdsVMewDlFSPMSwWvAZ7nbP1VeRqXzUE9cST5pqTaCuovv5L+MOW6Ee5fmZA1
FnQ4bbQyEbbibhsJ861kysn7H4n2mIDmVHuswj2lR/ZKAd0UiA4vbyBV13yt5CfFypJM9bSaztst
bT+JbWHNDPLl5F+pHBPGhBlAgHyDq7dg6YtbPMrDuSFwviCoJ17Le+8QE34Gvc3yuMAV5pqJnxKl
fgMPX6t7W3VZd5l92R55lmQ6TXTSWoukqf+5L+qfcHPfod2/osg6A1O53BVXKjbaJYO9rGFadNd+
441q35a6nfvbR9LfaQNTKJyIywd9pJFW4qkRxQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GoZGo/U+9AKztn89Y9dKm3D2V5+1+tUsGDpKHxYYz5qmvfqm7r5DYNYeJTHJg6fSrxbq3b7O8v/9
MGOKC788AoWMg314HJwh/z48xute1eOUDsRg/OX8By2H52U62+9bs+ySuQCtG35qlyOknbJ2kxNH
sG1tQ6jOKmGzRjKcYO4PnGvdBu5+NnE4voMHcoAKMb4zEEModfuunQypCJIeMPvlDdloy+xRMRWy
z3Y83LLg7Q9C1e2l3m09rxDy2UNmrCYGi+07uACaSZ2QBfLHEY/anG0LnZrwrkrkxmCX/Vc2wP1E
+UwaUmBsfMWB13AgXpW5KgIMO0+3bfsYEKiLYA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YeXmMlNbURBBp9EXCk/IaiCoOqkW0z0rQsz5E5q3PRvEiq8LiXYBVqLtLnNrhvbOf7hroaT+gkRn
Rqf+k7sENebcOf+5FD9UqnicpST9iWPS6BKCRTy6dpAwl4wnp+62+vYjrbeTzgqzDt3AeXYvrVd+
8aAqLOm9I60hGvxv1urTVCSAbOV0JqlneliOCS/N5Jdhe2iSf7GRyCGWj/XpUVwmXykE2+FXCGMs
AgVlDAUAiJAq30LI7y4p44O/Gc5mJVXaZfmXhTSgtoWwlBHETMuaBrTUwhO9SZkDD5mXojTYlCof
PjLguTUvciHkbjyIhaNXU7UVKt4sBKCQU4sxAw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
uD/1ItlikLEtkzNkoPJ76MTbXg4lBlJV0DuQn4XI2PQXHBIs2I5IgHP6IHhNrwn8ZOZlGSzgfk/J
fD/xVipNwaZHASXge4PYB+SfVYuBGIDTk0Far8yGCYCxbamJKop6OjZ31GylwdDRmDjwDUBy1TLE
5S6Qe9slofrXIU/oetjlIJ54QPI9BDlFfVyTIOYCoBiyzYMuTShQc2wSlWwz1yCbY23qBtl9egmK
Qqkyk70JI7zg0NszcADABD1nFknYLHtooAyZx6Y8Ew36iGufzJE7QoD28feNp3sYsUFRCrh+Ib1B
ujXinc8m2ucp19FM2BllXE4G7lsMoY1bJZBNcB5Q7VEYVQS1zK2iyQlXbxrBiHkLcIYm1fh44InB
W2WAeYdA7t9su5u1oxmmhFdKqjHYFAJrQV2OLWQ83tT9Z4eaS7pG8jgf2qVtP/re/o1Dbf/zh27b
f41tFeGO9J1hPBXYUNm179QPxmvKj4uiENFadCUoXLJT2SOL/uiDbI7l

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z4ba50iDnTGAqEpWGrFfU1os/ipzMnJlFf1JMly7EY/PcN/T4rM0StcEr64hLFZj+H9NXzbxBDNJ
ozl4BRL+63+4ywTcORE6JTjNi4W0wYZbS+o99wMX49rn7n52iJEYdsRWSwZbhGd1RGTQ8ZZA9cCO
hlfKeucaWDrhE4MtcRbTAa77O8BoMNxYyM9kwMa4cAjXJkYq656Zhicopfle/b6z8khJYvT7lTo3
dmqkzjXFQS/FV1IRx3cr9tecAEZk8I2Q3Gx4bwZykeqUXZZ8sBaAEHg3cs8Qgf03HI9pgVbwcS3O
WBCH3HZc31A4RMo+pz/C7WagJdxv3zk/+N9mxw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KX6Y5U5Mg7G9nf1ph658DSrrBi3HyQLNJeOq/Djopr3Bzn03J99X+fVptr6BDG1+apqtHj6Q9iDC
Lr7c8/SjUHPN5lK7TZ2ybHSphVohYD2lqmM3+3PK39p1Wytb9SwXgiyp5YfSOOizAFKRMYKbRtx1
nnS0rnHF6KwdAwfRKiIxA1PbG4puh9Ugw/kk8oWoM0VwYKujshYu/cN4eP/ljU7k96JMnquWd148
XLwCOA9oHE4ZtN7kQMMAog9L+XoyE52qkvfbVZpZLq+TxjRWAGQj1PC8GuqwAaTwt/q7a57/9CSc
j6k/03XxOu5YN3cGe8NIy8rUxw3f0Yzrgm9nHA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BL3uSsmnO/PsEQZie28sPRUIwOEz7TRW15bIjTKdGrzBrjSEyFe/GZzzZ0HHU6fkvDTLJ8p+YVqM
6QH3hA/TiptVAqOfICuvA9uV/WdsVjrdw1rLPI3nG+ylVG0zr2zGy5NxNmWdwe3Bpe8/wfgyk2F0
7z1uAvikk4WkS2+Q9+CXVuM3a7bBiqjbzPCz40bJrVDyt81aKCUhr6KaXNZk4P26quboaFmPBnEq
DyMzALeSfovGbAkrzAqSkPTAUycPJSUSFQyhEPIn2pSFMg04voVmNsqE/kWo6oQI3x26uatMk9zO
IZ7Fy0/vOXDs397U+BoezsC3pN+bcNH5TyFjuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2384)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12512)
`pragma protect data_block
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
opmC/7wLbhoCG6PMGGj+M2GbqnU3wVb8tUsj8WU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
