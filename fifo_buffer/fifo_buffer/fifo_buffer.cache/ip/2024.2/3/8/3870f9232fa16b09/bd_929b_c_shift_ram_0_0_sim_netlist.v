// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr  2 11:26:34 2025
// Host        : S20223108 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_18 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2096)
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
dWP32JNYPMU/MWipsK+3c+jKnYPs62caOdoTJb2OM15o2MQ1b+VsHAUWnVKCgGWA3nvQUMlY7jZN
I9WgyG9FeehLCdRiM6KdvqscUoit592Gw288gd9NEGk3qZ9tNumavyC1Ujj3y/6ZhbYdpZMkALmo
RZs1fNG2gCJ4OLEdg2EMhb0tMjNsVCd732GKGQKzcMf6EqxRFzGQTvr6hQpmNpjKbOkxCRT3qHpf
QDf0NA5Zw0VlWkmF0c538e0TVYIJfvxg8gZyNAr8Cki86RaJnApjKLVnyOPnBf9b0MnTQOGTdYzB
YULaJnf87aqIVVKWV91T7gmUhjvVPDQ2An/bJQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UZAFdKIikypdUuNUjH+CNlH2Mro0XUxeTbQmjW7sKT7wkBGV86E0jpZeurez0o0m1DxtiK2Qc3z9
wIfd0Fbqchk6PljyZY/PNXeSkcHtBVxEt/754eJaed43crIXttjL4izTNjM8zzaO/Bf4eK0ca4NW
Pu5ItNVgnJC04XZmzC3ndRPpawJqI2p9zEGHxhuoGFqLapa+TrvI4BP6horb2GgGlLh6WQ02O25L
IMW+H448/y9CstVU3WexZbzokYJ7619xDtdUJK8TOJFeXxeoGqvftPoM88nVURJTkrirWNMm01i5
FShBiGdz0RNQsWWnhG2xNxHI8wKEbl6ruZhxXQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4096)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 720)
`pragma protect data_block
1JtVFOG6C7sQl9JzcGmt1b7ywTQ9m9yWLUYqgjMb9aJeQ1+oKTmg+HG3idqwwLRvO00SY5CgrY2w
KzGVJGaWnJ6FbJcTcXXxFMiWGgWKqsWH/3gPlYCoepd2S8f4/tEVu6NskAb1qLRfZRlTEE5yfja5
2u3rkSqwkYtnTZSk7oN52YS/4AAmL2ML9K7a45GxusG+y5Wh30Y/0J84D5U698Xp1qTJUgKo+Zyb
///bm8QujuxGMGNt3JRBfbly18I+Jf0ZKKm4o23ijPIcgEi5Ex3JpCfHEGDPdVzq24mVGS5uT69s
X+/zoskf7W1rHLQyRK90CJctMKu6oj9NwlNybRq9I8Gj1Z9dZWT33P+L5nuMlMEHMyuKT07RbnzR
8ISkNjlVEU2VKTU0qu8vwR0EKpGH9U6knELz9JJGjyEol0cjZz5r1HsgIiPZjn3hfK+2aVLADcso
bTpBhkn4HbvcgowJEttoQFgPcnSP5wB1eB7/CK+NtjIiID/kPSY+QEQyea5q3hGu0ocecer8h2vU
4a7ytiULKq2N1wkt8jCg0afIcERk9eEFBQUOMNNagIWgbSvpCffdGeLdi3BC11cMiaLOVkg7tDCl
Zu7xydMIKJIvT1BRk2gWic3QH4P6hXT0ukA9vzBtghKPvrqMChKb+pHiUzTqvoCYFE/EXo5NmBln
nwxgIE9F79qwJnfy12ZkInBtjr9AHYxnZktaFl0jMRaaDRNPpXQkAyomVbVZGPzhztzt9JfmvW3x
dMjQ5oDiRwpMlzd+jOw/zny4dERVVY+gr7qK4DX4mj1ymC1W5hZPyUmVqyRG82Wq1NKYG0vqFZUE
hmamzhHDU2Dep4sW4s+mIxXysvGnjyMwJYsJ0BqxrmK46y1JPIt/i+mx6WsLaF+dgViefT87RL70
0BzE247XGYa8kWoKPt4MskLdOCMfpZnpKl31/SrKj59maFx3
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
