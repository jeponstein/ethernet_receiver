// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 11:26:38 2025
// Host        : S20223108 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/20223108/Documents/github/ethernet_receiver/fifo_buffer/fifo_buffer/fifo_buffer.gen/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_3/bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_20,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module bd_929b_c_counter_binary_0_0
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
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_20 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2416)
`pragma protect data_block
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
toczHL2aDvAHkfUY69rb5M8o5obW2A==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12688)
`pragma protect data_block
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
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
