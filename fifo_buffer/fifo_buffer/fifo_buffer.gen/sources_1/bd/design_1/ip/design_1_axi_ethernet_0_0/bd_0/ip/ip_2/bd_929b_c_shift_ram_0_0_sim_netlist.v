// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 11:26:38 2025
// Host        : S20223108 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/20223108/Documents/github/ethernet_receiver/fifo_buffer/fifo_buffer/fifo_buffer.gen/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module bd_929b_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_mode = "slave sclr_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_18 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m9qUT+fldtChniqI6IFTTNxBTM7FBU0iNgjkHvvtmZKQsDW5OztY8BWBBt0k+nwBFa2J+GGUZxJZ
18jaHgL/Nlvu9QTQ0DNk5LxuyaR1G4/tVyZNUFG5oXQHjA9afGLVM00GmzHFJ06EXgy7d1oj+e0d
Ev8eSLqph3wOijaAUtE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iN1a3I86VGj20JW/dhsfg9Dklezjtc4QmfqHt+bakyplWEPEP4Vqv48kQErAPN/Ul8MgdGiuiYn2
FwbtAsN66efV55sPsVduRZDGG5lrrGVgJ92NRT8MKDSEvx/9sl1WbbKrJTqAsEhG/2fCiyyTeLFd
wuA5UH5DPiwLDkdG+arBnLgKHV9RpuaRAnv3GI31WaUwaYSbuB1q/hPDd/Sg+Bt4+HyZb5ltqps0
Yh/gu/zk00iTZ0R5Hj045xmjtZWGU5xeGCtiAYuV4CiB4JEz5ewZzJr+G0VH97vfBpdyZq8T164F
CaBQPf/24VTFZZbtP0XACDCddNtIeUS3nwgtTA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMEiPFZAQf6goTFIbq0MtY0j1dld4c9qA0FfaUnMFeg4GRTO/x6EoX2KhVAHgBu2gm0qxvT5BJck
JZEArujmdnYsOrtI2P10JAJJzU66YBACYam6OKfmNfY/+Ya7cqiDEXL3Sq7AVWWI6EgKoe/RrNcb
czQZ8JRSiTThW0Zhp3Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LtYVpcHK/1G3aFvur5QYPnwiu//hwprprMkWOLN1vCA/j4B57THd/8eHUK9MKqYyufgsnqoNKQVh
3ZS9+APH0sxMOezX3bYV2bcTtjONSPM6+7g5gsQibE7SRPh+QIx5zGwsVBIQD5DVlwwP/vMs7lWs
KgtPEmYHMwQJ+TyRPsEhxuEsVjgXfOWhR0UdR6OXoSHLvmm9mxXYmegzts+KeQ43K3QLg+3LIYnS
BOOT3Yosty1nVSy7Ohb5cFdWuVxmbq2fPqT/0+kmIbxD1fC/xfCVuu38Zv034Ps1K6DSXG98/jm0
S9h5zn2Bat87VpECS3QdCAM/ZRIjhrDMCcYU5A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z4q5VbqJ00HIFaiVYg4q3BMTx01R1G45Hglaf5vBBJ3RbsxDS56mp0KTZhQwNwj/flOh4EbfMe2v
9zkuLigkgA3gpNJ5BETxjlDcwsMLTZ4JunV3jMwRlA14IuaU7ZqCRYBVwPSMyLbOcJ8vsYvgMRCq
Kg7TUIMhNmfXj9fZWd9t7WMMeUWLBR7KOynOU/LmlFVL/QHov3yWGrer3DU5HhGNP9Fn1i30p8jh
VbtXYbvStydz7j6nw8B7oZf6Bnf5KLzsIGi4MoJN7cBoGW+vt9o1YNmfpDqXv88oeyBhzSfsAE2j
whgSTz0KmFbI8UefsFSPG+oixypoZ4UV4uT9Aw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LKO7+GaQMkO974w2kcvcgyGAmP0+Wv1LWZRCvymWQGFBYYasVHsa2pn44tJZNz1h0Hqv7Jz6rMuT
tlVcV7RMBry72t6owZxH9WtkByoRq6cDryP+ZSDKbW6+2gQDgXvabL0ZrE9TKcmjbk2tVUWGyLWz
M3q9AraI8F3GyorzeeQpPMZmDuNnWifM1eCDljS3DtaKLdoiQHHYUClEil/isXQlgJIWzSVaefUk
ghN9zWIdRAcBGIMszR+UTDH0rvnWM3Cgy2M8u9RZ+pgRejtPkiau3ArWotirhmXcImN/HVU/Zxo1
47XvLRZurUNggf9+qfX1iMx73eCjti53tiJUsA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWj2kYT2N+tMK+bfjDLCjIGdwGEwmDbgC5LNQ45kel5Z9eRAVIIYZij+c83EvcL2VwJjTSlF8+aU
ymEp/cl/WwKZuYbE/H9j5VoAqrH1zNe/BDfNaCaza0+VLz4/6/6N2PE/XAbQQ4cDkRkkpcaqdoV1
iuQfkMCiH73V3kk7faugsN0aIRy91a4M3sAlvcJFuIy9YchUVwm9Qw3NoBfP0IrJMTIzgEYaSkJZ
KRbyXThADJQnMY6OL5sIWf6n6qrh3Dr+PsBOr9nDnsLw8aI5llZs4rvIEQB8jQMMrdXouGFPLkzJ
zLEniR3jvcrykfdlFeBGmyBF6XJxPdEaZ2cvuA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YjEWFZrvUXIK+AN1uVTPdBJlQypLOirNeOehmGlvNvEn/PiMW7lsFXFgShQ5kUGymMkPlNDpSlfo
xapJ96+cj4N6WK/n+ExGvKlTiTzFEHs61gpx3XaTOdOgtK/GyPFxQUjfw4rHZGgfBgdYZDG8YSih
j6/hcRGZynQz83GMDwDTuUaitH9I8+23sA/Ja9f/yy8N76casEoBs6cqNPxyYgQ8W+Pv8H006cLz
2aH0McSQqOTouAOdAUadIIw1zzXfeM11//LSymKnim39NC7zlm5ue2Kqnn8qLxoTD2EbPOGczBxV
40J+E1AY3tPehlp+rbTmXJ9uCRnXBWmiEU2YVsomiYWn5IPREZp0/OCYZvfazQC7yY2l6Vo5olSt
ygVrWm8+WwOK8q7QTJCgbDlvuQHdiLoVNBglF6VPBWMUNrpbIAJiCwoV+Vk5R7UjWfv0Kc1A5EL1
k1zh3khpsgKDOyr29hXkvMtu9MVvCQVj+OelQYPrzkz/pTPTgVkp3iE/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BE4xRuvg7Rw9YBIdL+H4SCMDlTpFR2RM9VWIZM55o0qeYxA4Vb2MeloUXWl7LAWWA51yTjooW7IG
L1XpbMho4xywsAL5lhGZLIZlzzA6tDZDmg+GvEeg3olVRW3/LyNRo9ZgnonssrgZVle8I8y11maS
hrMbrrLMEYu0XIXwO3TCaY16eYVID6RqYgOXEEj1bFNkDpj1DUS4rjkVz6/+3hbkyb0+yp+McC2M
Z65xE6WTkJE298/Y52x27Mttvfh0WhAyrH3822qWaGLwJCTy5SFncSdy2/vjsuQb/Qyd1aDqpW3U
qEI8NZUvt0CdW7/VDsDUJcrM47wBkk/AAXdZuA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2112)
`pragma protect data_block
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
qn5o
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m9qUT+fldtChniqI6IFTTNxBTM7FBU0iNgjkHvvtmZKQsDW5OztY8BWBBt0k+nwBFa2J+GGUZxJZ
18jaHgL/Nlvu9QTQ0DNk5LxuyaR1G4/tVyZNUFG5oXQHjA9afGLVM00GmzHFJ06EXgy7d1oj+e0d
Ev8eSLqph3wOijaAUtE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iN1a3I86VGj20JW/dhsfg9Dklezjtc4QmfqHt+bakyplWEPEP4Vqv48kQErAPN/Ul8MgdGiuiYn2
FwbtAsN66efV55sPsVduRZDGG5lrrGVgJ92NRT8MKDSEvx/9sl1WbbKrJTqAsEhG/2fCiyyTeLFd
wuA5UH5DPiwLDkdG+arBnLgKHV9RpuaRAnv3GI31WaUwaYSbuB1q/hPDd/Sg+Bt4+HyZb5ltqps0
Yh/gu/zk00iTZ0R5Hj045xmjtZWGU5xeGCtiAYuV4CiB4JEz5ewZzJr+G0VH97vfBpdyZq8T164F
CaBQPf/24VTFZZbtP0XACDCddNtIeUS3nwgtTA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMEiPFZAQf6goTFIbq0MtY0j1dld4c9qA0FfaUnMFeg4GRTO/x6EoX2KhVAHgBu2gm0qxvT5BJck
JZEArujmdnYsOrtI2P10JAJJzU66YBACYam6OKfmNfY/+Ya7cqiDEXL3Sq7AVWWI6EgKoe/RrNcb
czQZ8JRSiTThW0Zhp3Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LtYVpcHK/1G3aFvur5QYPnwiu//hwprprMkWOLN1vCA/j4B57THd/8eHUK9MKqYyufgsnqoNKQVh
3ZS9+APH0sxMOezX3bYV2bcTtjONSPM6+7g5gsQibE7SRPh+QIx5zGwsVBIQD5DVlwwP/vMs7lWs
KgtPEmYHMwQJ+TyRPsEhxuEsVjgXfOWhR0UdR6OXoSHLvmm9mxXYmegzts+KeQ43K3QLg+3LIYnS
BOOT3Yosty1nVSy7Ohb5cFdWuVxmbq2fPqT/0+kmIbxD1fC/xfCVuu38Zv034Ps1K6DSXG98/jm0
S9h5zn2Bat87VpECS3QdCAM/ZRIjhrDMCcYU5A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z4q5VbqJ00HIFaiVYg4q3BMTx01R1G45Hglaf5vBBJ3RbsxDS56mp0KTZhQwNwj/flOh4EbfMe2v
9zkuLigkgA3gpNJ5BETxjlDcwsMLTZ4JunV3jMwRlA14IuaU7ZqCRYBVwPSMyLbOcJ8vsYvgMRCq
Kg7TUIMhNmfXj9fZWd9t7WMMeUWLBR7KOynOU/LmlFVL/QHov3yWGrer3DU5HhGNP9Fn1i30p8jh
VbtXYbvStydz7j6nw8B7oZf6Bnf5KLzsIGi4MoJN7cBoGW+vt9o1YNmfpDqXv88oeyBhzSfsAE2j
whgSTz0KmFbI8UefsFSPG+oixypoZ4UV4uT9Aw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LKO7+GaQMkO974w2kcvcgyGAmP0+Wv1LWZRCvymWQGFBYYasVHsa2pn44tJZNz1h0Hqv7Jz6rMuT
tlVcV7RMBry72t6owZxH9WtkByoRq6cDryP+ZSDKbW6+2gQDgXvabL0ZrE9TKcmjbk2tVUWGyLWz
M3q9AraI8F3GyorzeeQpPMZmDuNnWifM1eCDljS3DtaKLdoiQHHYUClEil/isXQlgJIWzSVaefUk
ghN9zWIdRAcBGIMszR+UTDH0rvnWM3Cgy2M8u9RZ+pgRejtPkiau3ArWotirhmXcImN/HVU/Zxo1
47XvLRZurUNggf9+qfX1iMx73eCjti53tiJUsA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWj2kYT2N+tMK+bfjDLCjIGdwGEwmDbgC5LNQ45kel5Z9eRAVIIYZij+c83EvcL2VwJjTSlF8+aU
ymEp/cl/WwKZuYbE/H9j5VoAqrH1zNe/BDfNaCaza0+VLz4/6/6N2PE/XAbQQ4cDkRkkpcaqdoV1
iuQfkMCiH73V3kk7faugsN0aIRy91a4M3sAlvcJFuIy9YchUVwm9Qw3NoBfP0IrJMTIzgEYaSkJZ
KRbyXThADJQnMY6OL5sIWf6n6qrh3Dr+PsBOr9nDnsLw8aI5llZs4rvIEQB8jQMMrdXouGFPLkzJ
zLEniR3jvcrykfdlFeBGmyBF6XJxPdEaZ2cvuA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YjEWFZrvUXIK+AN1uVTPdBJlQypLOirNeOehmGlvNvEn/PiMW7lsFXFgShQ5kUGymMkPlNDpSlfo
xapJ96+cj4N6WK/n+ExGvKlTiTzFEHs61gpx3XaTOdOgtK/GyPFxQUjfw4rHZGgfBgdYZDG8YSih
j6/hcRGZynQz83GMDwDTuUaitH9I8+23sA/Ja9f/yy8N76casEoBs6cqNPxyYgQ8W+Pv8H006cLz
2aH0McSQqOTouAOdAUadIIw1zzXfeM11//LSymKnim39NC7zlm5ue2Kqnn8qLxoTD2EbPOGczBxV
40J+E1AY3tPehlp+rbTmXJ9uCRnXBWmiEU2YVsomiYWn5IPREZp0/OCYZvfazQC7yY2l6Vo5olSt
ygVrWm8+WwOK8q7QTJCgbDlvuQHdiLoVNBglF6VPBWMUNrpbIAJiCwoV+Vk5R7UjWfv0Kc1A5EL1
k1zh3khpsgKDOyr29hXkvMtu9MVvCQVj+OelQYPrzkz/pTPTgVkp3iE/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BE4xRuvg7Rw9YBIdL+H4SCMDlTpFR2RM9VWIZM55o0qeYxA4Vb2MeloUXWl7LAWWA51yTjooW7IG
L1XpbMho4xywsAL5lhGZLIZlzzA6tDZDmg+GvEeg3olVRW3/LyNRo9ZgnonssrgZVle8I8y11maS
hrMbrrLMEYu0XIXwO3TCaY16eYVID6RqYgOXEEj1bFNkDpj1DUS4rjkVz6/+3hbkyb0+yp+McC2M
Z65xE6WTkJE298/Y52x27Mttvfh0WhAyrH3822qWaGLwJCTy5SFncSdy2/vjsuQb/Qyd1aDqpW3U
qEI8NZUvt0CdW7/VDsDUJcrM47wBkk/AAXdZuA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OR5EoeU3r8GOuP+fskfs2IXKjbmIdI84aW6ZdlcWObaR82WPWRqV5AkxKCNSyCFFSUfcjYCbRUU1
JzHcCW/klf0edhE52jRzDrvKoTa7F+nBhAkkHoKO1a6+0rvInc6gBk3/gXwnnbuk9xihGS+Szl+1
bp1mmZ/r3HLbPz9SzjeLNiiv9qYFqWIjGyBeCp3g4pjcxtUjKUCGcsvJjkjIqDJ/g8LOhBNEO6iK
5YUwygxV96yBfOxtteXb+xMp+12Ue2R+GjVw3TFEFredoVOv3oxxqtMJx24kHkiv91gGFYTuWsyZ
gOxwQfaSdqGGJiCMP+mn4JkbsFF1Xzzzkq2NIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vC1ZCyLGbSFVk8TE0WSlwQ/xQPES9QbDodrKFChp+HAQ0AEXf/FNh5KkNs7aVjS6s6f+tkjltvhu
MgknspYZFXYWK3IHXmx766KxsSQ40PVGig27YZEkvSQClFl4tUJhaZmhrzGgSGu6vvopr0gqCRgL
d7M2JpKCNkKiESmugoJ5e7646H1aoRcPsfhNhGf4J/bUyLIGJDN1/IRDirWKoR9fo2cVI6KauFeB
VXrQCl09IaEcUu4Ft6SDAup2iV7O52Lr1Ilwl24VkVcWEu3HaNXQbSjut7E7HxpZCwNb/DDPpaf1
b68/wUWr2beeWd4h6u1j6eb696UTijzNVjbbcA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4112)
`pragma protect data_block
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
KVjdl8TZtis=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
UPcG4hDDGmubEpsb9j+TQtkFoVSPeZTkOSuFRPJNcg6q3veHR4EoAOtPh0LzpZ53/Jj2TbmAhcSa
cuTtRffIaPEAAuYiWfUBH48j7BI+ztLXD8RZpPbMXvV6ERtk7VpOjVtagfcJV5j0SBnWakmZMZia
9gIjpp9lfkFEHwisAec=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1aOPXJDFjsPzCKcb0NcwyNoqNDT4ZAgrXzqdPrcGaFVI1GccBT9EjDFsWqKau8Au3j6aohITUlLx
stYTVPylUIrPYpvYgfZsMvSegAuH3W1Dg1NFHja2b/3ZD8OjFYdG/jX132V5aiYWYN2byF17sDcP
qIqtgz8vUNKolQUGEii2XoWOSIGAvKHhUr3BBkHcfpmlJPotqq9X0oShWzmAXSqEW+puFF8G8dtZ
eJLwve1qvlw27tIFsn1wvOqe7g5ZnMVwh8KqQt6Rsd9izmX8cjUNgf099bjsLe2OpQKxIBRSI0U6
AD1P8povJ0B6LjBMoAWv2XN0bAOvg9FNJ7AyzQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
c/+qBgd7gFWSK6BcklD0EGkqckBeBy3230Z1DClz3CCI/19vBK+AMImHHLCiKPfSNEWF9TkEhBcK
S20jIHWsYsrn02W9f8VK+WFiv9dIydmUgmsKh2k/Y0zNUlOqNOmXXHmQHv3JuRz8xw2pkLQ2TP+D
+uyYTeYp7JlSg6nomCI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T6hB8sgQ03e8k/lfvAve/R2Jic4GUlpNYPeje8zrp+oF/T9NYQ2GsJIVRFtSMMjFmn7Ca69ARAz5
Gv6aoCo7ReA2fyTr9VdjwWxrhQ1wt5tjpzVf6b8dwwRIh3XIGPicpcut5e7UnlyH6Us2VDEQHmYv
s6MgIItXqMJhqX2k0Whroqn/FLv0nC42HMLEN1rSvleW/5qj0/wBPyTXO0sHX5vZka0f6EBmt7eM
GsnhIGOgnySombFGk9lAWza/MxrfokjEQe52QAFgBrCoVXQoHctf6euo5ta30/5+OjaHFO1bcRhH
MhZd0Rpke+qP2kJkYZV2jtIkV2RWewDK9sB5VA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cu73JpePcOi8evX4I37tX75qY4WNWYQfyby9PIUZfy1VGSkgyjrhRRF7DERq/BlrVCv7h8C43AHV
+b3ZqIZqMqqHZ1lhL7TJSitAvp/XADUnm/eYYrRz+OBsa1bqxVYgu+HHm4Uus1KsvP3B+YPO1A6c
3P6mPg1rQ8r673am2spbPNRBPmei/g2JKxnz7/wA6alq5Kfbwc/JzyNYdGt/lo16TiNNo9l7+MmQ
nou7mXVmyo02O/l6uCGjHAtRkAXL93l11o0xTLuL1QwtGiBIyrZzqwH8ky8J0BCvtRI/2DZqjLt6
aJ/8WWIX6PjlyQxlI/ATNki+FcGMndi1XzuOZQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jL/mjAHG6WTTLVdBOnGb4T3NUbZBUblciOMOlbTl4xeTq04g2+fhAqHzFrri4CC/lRZno9sgtAN7
kjdNUHBVFmpOcd6v/ve1fK3D2VePvDdfPLbAwom3GeBgOPVq7pHBS+SPvVutOGWxSkQIP9tP4ToO
mrEVFaGyR9tVunK6FjYEUVtH8FNmNMq4IFY9CrFjdnV04bbV4ZfGu7+LRTIyZT1zAL1gcLUcdVjg
Ivb/U7x93oi+dFPK1jROIwaBWcSyrCe1r5TJibmHl0p9g0Qat4oSOaMwuVZlRtwv1heE+vvkMG78
CcZ6dQiB6qLduz5cLjwkVgahf7FE5Zjptrbm7Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nbFnkPFOLKXb41CCvtKqJY2za2FhXu8HMr4YTWqKY6L8obJfJ3ieZ6iDd+0kJl5CGvjViXdTonQo
kVejTEI90eox9wWO/p4/uYmZ01FkTke0HQKVoAg1Uibfa8kHhE6SAwAWN665GJhdOsflnptoCHbL
P14XhHKuWzefehSzKpYXtMlWi6gpWw6ItqEdzknOeE+CswSI/scy0ARHpMmZgHwEW2z463u7VAwX
DKRcsd0vyUoK4u5aEGrWvw95qNjgawQ8q01YMtEsIaCuHwJ4gC4cWCyJVuslm4jL3Ww1k5KXDo3c
hOC3+9vzoYVgRio2O+WFdaYRi6UqYmrP8kND2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
rPZB6EyKPDM59UKR2JplxsBlaaEH18wMCWnQsTQe33wQFFdUqyYvvoIEh6W6XUdv6v0ufRNsDiww
RyXrNbayDvSvDDv38X6poV+NsVuQyIODdMU2batGuJTKjM4mx5D8R88I4nv9shAYzaHA6YIuRBCU
f0WEiVMlLfsiNwlpkTt+ZRW6/FRg8STSYQRksB2oP3fPajr3hPKAj6JGoXpx/jPbY7rFmHJe9LDY
dahXrmtgzppyQXa/yNlzm9cKgbhVZfZ9TpNh+NRGvGvZghiZOSx8XTUmLTgBiuKZSuOKT81wD04d
BtJNA4eiDB62wAYHlMngf61qg8NtBf5pEqVr5z1go46ad6PHYcYAnNHm48Ixg1mzXTTAT6oNIDcC
gdQCuYl5u6MxO7GIAt9o+yQeo2UqNv7UFbnqsI6DLSDD++XwMz7c/l1TX3TOsexs/SVpFfJ8sflN
DNkb4skYj+k0ZyULs7lqgV2D7+yHJedpataF1mC/jJCmS+2MDmtEs6jR

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzhxT8YlWxize2Qokg4N/oWbuvMkh1R05HhwQDWTBzQJnzPIy8wMmyVcSRLYzDYqohKB3rtGfpXY
w1w1k6MTRIYmwUbjfdQ+IGaytLDEjx718lwn3XDjyIMhqaesuna6SALzlvnadSoG8b3jPi0Rqqst
vEVxBjnvOt+tIoLOsoF5EGJWN2EoG+LRbBjjpcIkM/+zeB552Bb/iDGXf+tsYYzh2/QYZXVPxbw5
MxlWNvJA8MjkCmsjUgDAwa4BRCZfsD4ALAl6vha+aMtJdWaFv8wspe6tzgPr9BXkajz0itUKX4qa
3sF3Tc2tpB3fAcBwjzCw+r2IuY0B++n/zmftBQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sEDGBkXGTWRqJWVXw3+hZdYtfkI9SKp4d3QHQY1MX3to1AIwQk2TeXP+1SFbfbutw5GSBVdHE7kP
UvonFqEKa55WRv6/fJPxETkdLeCr28yOI10LnkpoOGvqIb6RP1uWJjmV2MTZNrBELleRUqGuRfqN
Ow/fug59KCtfrOkdGcBkhqKEDUGQJW3sO76Hdw0Og/PYEHvXtt4U76ig8aTWskuW4hqZnKk99t/A
iagkeqvu9/U3VKj4/Ai4q1HTGIe0WhcxZDXm8x5ioVIxxnb3o0Q5QcFn8InHqG8Za5BfnLLtalAI
AEQd4FFgsuhw1StkNQCOmXmDHchJKjj5xaGQ1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I85eKznWm7ZDSDb7we9E6Iz4ib9bmCcT3VixMMDC6QDcaE4yx1LttyJGAdtgofUBOFeI1TKJp3dg
p4HY+ceo5NMqiNmn3ov9C1VaIOyb4yYkIfm17c5NbOCw/ms7f8FBgfbfdn3Km0N7R0YYUqJB2H6m
sJ56TfZYfOt22uVrflpHa2n42bNW6Kzl4upX6GQQUASiH3EfCtfJAqueRtu8y49Pf0Vqe7CQCLqj
VRV5C/0fdXTn8HzOeiO+2kdzKxOVvB2vUsrlv920kZZ2z98SxZqtWpf7492tEVqVPPLa56DH3OpC
z0alp4qrbN+dIg8gHiyVbfJQRaJCAzswQpkFdw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 752)
`pragma protect data_block
FitNi9cw+LuDsBp0gdGT/hhMIJFWERwRN1hg6ccqjZVdWLKqgM0VfF5PiJkMrV7uxezTuoKo+woX
WeIMPB0pKhp+r9sDVTixo02ABWdgw7yLLvgQEqTg9o9CDA4SJdaa+Vz8La/fmQUZsyDBzBYuuNdK
ZEigXkJka2DDPaDLL1RbDjp4H5TWPUiXvfmXvTPRdxbOLDj8pWXD9SjHeoNxxUYk8DEHbtUg/Kig
wNTHSPrbY9a13LcpeaCwkKquPsYVBC2SgF5hMqbTv4IhSTF19LfmHIZM0d4r8xfAEHtfgt0R0RrS
jHqtj6NGQQ+7qVxKGBsmtH4klFo0Lsfr9e8XpTrGtVbjv34pHM7sgHL5Lj6g7XFmgeiiSiBSbM8K
qT/UaQCP207x24I+z445Arns5JTGMhT4fqihMXCdMLWLRGesggZzv56kmUiwc+DDmPGnou3GayXo
qdVk2GaQhtsgZ6RrzCmWM3MfRSPbXJwrqmjcly4z1qVivnxTI4MU0hPFiAtj+U1pIrC5K3VNg3Gy
o1B6HD4s8hMrTqMQHrvjP3S6iDzQcdUGrjw61idzgNN6+yO365sbxwgmRKNGli6cuCFsGnfHUPeB
KLZjpkaTVa9bG/LlaIWu022PL+g9O0PQlrtHhddgYjSX17HPV5GYL7JyADZ1zjeLgmgIVlApadW/
MsYSc+RZ8s5q3d8uWbjqA3pFzXGLjCXtcXMjKJ6namOGobZqRUv7EY9DMHh8qvK1aA3Sbd941iN8
zzKT7Tovq4qRnjKgS4qPBKkEuhp+S6T6YGTP807OcRg3kQlPNHjQGs/YadbXeeeXZJUrX4CRDgXE
w2euLX22AWdJ8nNsl4iPiJrM8Bvq49nf5eytY28MH/Ihd9doANaBJuawurlZwWZ6c09XDZCuya0N
dyx05/lcvWWwp66zyi80mF1sIlzi69Zasx0oxpeAQKTPOP8q7I9Hqyz+27WE79Gv0vrGSp7oteGU
/p/iFb9hct6o9dI=
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
