
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:062default:default2
404.7502default:default2
73.8592default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/utils_1/imports/synth_1/DIV2.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2~
jC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/utils_1/imports/synth_1/DIV2.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top INTT -part xcu250-figd2104-2L-e2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcu2502default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcu2502default:defaultZ17-349h px� 
[
Loading part %s157*device2(
xcu250-figd2104-2L-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
110682default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2134.191 ; gain = 399.820
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
INTT2default:default2
 2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
counter2default:default2
 2default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/counter.v2default:default2
232default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter BW bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/counter.v2default:default2
232default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
772default:default8@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUA2default:default2
 2default:default2t
^C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/BUA.sv2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
UBU2default:default2
 2default:default2s
]C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/UBU.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
delay2default:default2
 2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/delay.v2default:default2
232default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter N bound to: 20 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay2default:default2
 2default:default2
02default:default2
12default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/delay.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mod_Sub2default:default2
 2default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Sub.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mod_Sub2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Sub.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mod_Add2default:default2
 2default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Add.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mod_Add2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Add.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mod_Mul2default:default2
 2default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Mul.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
karatsuba482default:default2
 2default:default2{
eC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/karatsuba48.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
multiply2default:default2
 2default:default2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/multiply.v2default:default2
232default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter A_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter B_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter OUT_WIDTH bound to: 34 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
multiply2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/multiply.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
karatsuba482default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/karatsuba48.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
modred2default:default2
 2default:default2v
`C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/modred.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
karatsuba512default:default2
 2default:default2{
eC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/karatsuba51.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
multiply__parameterized02default:default2
 2default:default2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/multiply.v2default:default2
232default:default8@Z8-6157h px� 
]
%s
*synth2E
1	Parameter A_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter B_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter OUT_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
multiply__parameterized02default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/multiply.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
karatsuba512default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/karatsuba51.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
delay__parameterized02default:default2
 2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/delay.v2default:default2
232default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter N bound to: 12 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter BW bound to: 96 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
delay__parameterized02default:default2
 2default:default2
02default:default2
12default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/delay.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
modred2default:default2
 2default:default2
02default:default2
12default:default2v
`C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/modred.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mod_Mul2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/Mod_Mul.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DIV22default:default2
 2default:default2t
^C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/DIV2.v2default:default2
232default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter BW bound to: 48 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DIV22default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/DIV2.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UBU2default:default2
 2default:default2
02default:default2
12default:default2s
]C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/UBU.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUA2default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/BUA.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
INTT2default:default2
 2default:default2
02default:default2
12default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
232default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2231.586 ; gain = 497.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2231.586 ; gain = 497.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2231.586 ; gain = 497.215
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2462default:default2
2231.5862default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/constrs_1/new/timing.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/constrs_1/new/timing.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
2376.1372default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.2192default:default2
2376.1372default:default2
0.0002default:defaultZ17-268h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Loading part: xcu250-figd2104-2L-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
I
%s
*synth21
Start Preparing Guide Design
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The reference checkpoint %s is not suitable for use with incremental synthesis for this design. Please regenerate the checkpoint for this design with -incremental_synth switch in the same Vivado session that synth_design has been run. Synthesis will continue with the default flow4740*oasys2~
jC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/utils_1/imports/synth_1/DIV2.dcp2default:defaultZ8-6895h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Doing Graph Differ : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
INTT2default:defaultZ8-802h px� 
�
!inferring latch for variable '%s'327*oasys21
FSM_sequential_next_state_reg2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
852default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2-
FSM_onehot_next_state_reg2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
852default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  STAGE1 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                  STAGE2 |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  STAGE3 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    DONE |                              100 |                              111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
INTT2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys21
FSM_sequential_next_state_reg2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
852default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A0_reg_reg[3]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
822default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A0_reg_reg[2]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
822default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A0_reg_reg[1]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
822default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A0_reg_reg[0]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
822default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A1_reg_reg[3]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
832default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A1_reg_reg[2]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
832default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A1_reg_reg[1]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
832default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
A1_reg_reg[0]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
832default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2&
inv_psi_reg_reg[3]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
842default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2&
inv_psi_reg_reg[2]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
842default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2&
inv_psi_reg_reg[1]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
842default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2&
inv_psi_reg_reg[0]2default:default2u
_C:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.srcs/sources_1/new/INTT.sv2default:default2
842default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
U
%s
*synth2=
)

Incremental Synthesis Report Summary:

2default:defaulth p
x
� 
N
%s
*synth26
"1. Incremental synthesis run: no

2default:defaulth p
x
� 
a
%s
*synth2I
5   Reason for not running incremental synthesis : 


2default:defaulth p
x
� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input  102 Bit       Adders := 16    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input  102 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input  102 Bit       Adders := 16    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   96 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   96 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   96 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   50 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   49 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   49 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   48 Bit       Adders := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   48 Bit       Adders := 16    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 48    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 24    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              102 Bit    Registers := 24    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               96 Bit    Registers := 60    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               51 Bit    Registers := 24    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               50 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               48 Bit    Registers := 168   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               36 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               34 Bit    Registers := 20    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 48    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 88    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   48 Bit        Muxes := 48    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   48 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   35 Bit        Muxes := 24    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2p
\Part Resources:
DSPs: 12288 (col length:96)
BRAMs: 5376 (col length: RAMB18 384 RAMB36 192)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
b
%s
*synth2J
6DSP Report: Generating DSP P, operation Mode is: A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: Generating DSP P, operation Mode is: A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: Generating DSP P, operation Mode is: A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP z0_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
j
%s
*synth2R
>DSP Report: register in2_reg_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register low2_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
j
%s
*synth2R
>DSP Report: register in1_reg_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register low1_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z0_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z00 is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
l
%s
*synth2T
@DSP Report: Generating DSP z2_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register mid2_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register mid1_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z2_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z20 is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP z4_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
h
%s
*synth2P
<DSP Report: register high2_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
h
%s
*synth2P
<DSP Report: register high1_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z40 is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
d
%s
*synth2L
8DSP Report: Generating DSP P, operation Mode is: C+A*B.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
[
%s
*synth2C
/DSP Report: operator P is absorbed into DSP P.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP z0_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
j
%s
*synth2R
>DSP Report: register in2_reg_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register low2_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
j
%s
*synth2R
>DSP Report: register in1_reg_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register low1_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z0_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z00 is absorbed into DSP z0_reg.
2default:defaulth p
x
� 
l
%s
*synth2T
@DSP Report: Generating DSP z2_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register mid2_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
g
%s
*synth2O
;DSP Report: register mid1_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z2_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z20 is absorbed into DSP z2_reg.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: Generating DSP z4_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
h
%s
*synth2P
<DSP Report: register high2_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
h
%s
*synth2P
<DSP Report: register high1_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
b
%s
*synth2J
6DSP Report: operator z40 is absorbed into DSP z4_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: Generating DSP multiply/z0_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: register multiply/in2_reg_reg is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: register multiply/low2_reg is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: register multiply/in1_reg_reg is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: register multiply/low1_reg is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z0_reg is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
t
%s
*synth2\
HDSP Report: operator multiply/z00 is absorbed into DSP multiply/z0_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: Generating DSP multiply/z2_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z2_reg is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: register multiply/mid2_reg is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z2_reg is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
y
%s
*synth2a
MDSP Report: register multiply/mid1_reg is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z2_reg is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
t
%s
*synth2\
HDSP Report: operator multiply/z20 is absorbed into DSP multiply/z2_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: Generating DSP multiply/z4_reg, operation Mode is: (A''*B'')'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z4_reg is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register multiply/high2_reg is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z4_reg is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: register multiply/high1_reg is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register multiply/z4_reg is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
t
%s
*synth2\
HDSP Report: operator multiply/z40 is absorbed into DSP multiply/z4_reg.
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:27 . Memory (MB): peak = 2376.137 ; gain = 641.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px� 
�
%s*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
}|multiply    | A*B         | 17     | 17     | -      | -      | 34     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | A*B         | 17     | 17     | -      | -      | 34     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | A*B         | 17     | 17     | -      | -      | 34     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A2*B2)'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|multiply    | C+A*B       | 18     | 17     | 35     | -      | 36     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A2*B2)'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:41 . Memory (MB): peak = 2728.016 ; gain = 993.645
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:46 . Memory (MB): peak = 2794.434 ; gain = 1060.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:00:39 ; elapsed = 00:00:53 . Memory (MB): peak = 2821.809 ; gain = 1087.438
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:00:43 ; elapsed = 00:00:57 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:43 ; elapsed = 00:00:57 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                                                                        | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|INTT        | BU_Array/UBF_inst[0].UBU_i/ModMul/barrett/shift1/genblk1[11].buffer_reg[11][49] | 10     | 12    | YES          | NO                 | YES               | 12     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|INTT        | BU_Array/UBF_inst[0].UBU_i/ModMul/barrett/shift1/genblk1[11].buffer_reg[11][46] | 14     | 188   | YES          | NO                 | YES               | 188    | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|INTT        | BU_Array/UBF_inst[0].UBU_i/mux_out_0_d20/genblk1[19].buffer_reg[19][47]         | 21     | 192   | YES          | NO                 | YES               | 0      | 192     | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 16     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 14     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | (A'*B')'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 16     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 14     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | (A'*B')'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 16     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 14     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | (A'*B')'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 16     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 17     | 17     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba51 | (A''*B'')'  | 15     | 14     | -      | -      | 34     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | Dynamic     | -      | -      | -      | -      | 36     | -    | -    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|karatsuba48 | (A''*B'')'  | 16     | 16     | -      | -      | 32     | 2    | 2    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | (A'*B')'    | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}|multiply    | A'*B'       | 17     | 17     | -      | -      | 34     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px� 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px� 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px� 
M
%s*synth25
!|1     |BUFG            |     2|
2default:defaulth px� 
M
%s*synth25
!|2     |CARRY8          |   788|
2default:defaulth px� 
M
%s*synth25
!|3     |DSP_ALU         |    68|
2default:defaulth px� 
M
%s*synth25
!|4     |DSP_A_B_DATA    |    68|
2default:defaulth px� 
M
%s*synth25
!|6     |DSP_C_DATA      |    68|
2default:defaulth px� 
M
%s*synth25
!|8     |DSP_MULTIPLIER  |    68|
2default:defaulth px� 
M
%s*synth25
!|9     |DSP_M_DATA      |    68|
2default:defaulth px� 
M
%s*synth25
!|10    |DSP_OUTPUT      |    68|
2default:defaulth px� 
M
%s*synth25
!|12    |DSP_PREADD      |    68|
2default:defaulth px� 
M
%s*synth25
!|13    |DSP_PREADD_DATA |    68|
2default:defaulth px� 
M
%s*synth25
!|14    |LUT1            |    33|
2default:defaulth px� 
M
%s*synth25
!|15    |LUT2            |  3685|
2default:defaulth px� 
M
%s*synth25
!|16    |LUT3            |  3092|
2default:defaulth px� 
M
%s*synth25
!|17    |LUT4            |  1808|
2default:defaulth px� 
M
%s*synth25
!|18    |LUT5            |   433|
2default:defaulth px� 
M
%s*synth25
!|19    |LUT6            |  1090|
2default:defaulth px� 
M
%s*synth25
!|20    |SRL16E          |   200|
2default:defaulth px� 
M
%s*synth25
!|21    |SRLC32E         |   192|
2default:defaulth px� 
M
%s*synth25
!|22    |FDCE            |  1141|
2default:defaulth px� 
M
%s*synth25
!|23    |FDRE            |  6975|
2default:defaulth px� 
M
%s*synth25
!|24    |LD              |   579|
2default:defaulth px� 
M
%s*synth25
!|25    |IBUF            |  1061|
2default:defaulth px� 
M
%s*synth25
!|26    |OBUF            |   385|
2default:defaulth px� 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 1 critical warnings and 16 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:36 ; elapsed = 00:00:54 . Memory (MB): peak = 2855.445 ; gain = 976.523
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:47 ; elapsed = 00:01:02 . Memory (MB): peak = 2855.445 ; gain = 1121.074
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.3002default:default2
2884.5432default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
24982default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
3031.8482default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 1710 instances were transformed.
  BUFG => BUFGCE: 2 instances
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 68 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 1061 instances
  LD => LDCE: 579 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
1caccbe72default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
162default:default2
12default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:002default:default2
00:01:252default:default2
3031.8482default:default2
2602.2622default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
ZC:/Users/User/Documents/Projects/CKKS-Keyswitching/CKKS-Keyswitching.runs/synth_1/INTT.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file INTT_utilization_synth.rpt -pb INTT_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Sep 27 17:45:38 20242default:defaultZ17-206h px� 


End Record