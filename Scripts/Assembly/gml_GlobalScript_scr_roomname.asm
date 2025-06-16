.localvar 2 arguments

:[0]
b [45]

> gml_Script_scr_roomname (locals=0, argc=1)
:[1]
push.s "scr_roomname_slash_scr_roomname_gml_1_0"@10899
conv.s.v
push.s "Dark World?"@10900
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "scr_roomname_slash_scr_roomname_gml_2_0"@10902
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[3]
push.v arg.argument0
pushi.e 28
cmp.i.v EQ
bf [5]

:[4]
push.s "scr_roomname_slash_scr_roomname_gml_3_0"@10903
conv.s.v
push.s "Kris's Room"@10904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[5]
push.v arg.argument0
pushi.e 65
cmp.i.v EQ
bf [7]

:[6]
push.s "scr_roomname_slash_scr_roomname_gml_4_0"@10905
conv.s.v
push.s "Castle Town"@10906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[7]
push.v arg.argument0
pushi.e 71
cmp.i.v EQ
bf [9]

:[8]
push.s "scr_roomname_slash_scr_roomname_gml_5_0"@10907
conv.s.v
push.s "Castle Town"@10906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[9]
push.v arg.argument0
pushi.e 72
cmp.i.v EQ
bf [11]

:[10]
push.s "scr_roomname_slash_scr_roomname_gml_6_0"@10908
conv.s.v
push.s "My Castle Town"@10909
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[11]
push.v arg.argument0
pushi.e 88
cmp.i.v EQ
bf [13]

:[12]
push.s "scr_roomname_slash_scr_roomname_gml_7_0"@10910
conv.s.v
push.s "Cyber Field - Entrance"@10911
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[13]
push.v arg.argument0
pushi.e 93
cmp.i.v EQ
bf [15]

:[14]
push.s "scr_roomname_slash_scr_roomname_gml_8_0"@10912
conv.s.v
push.s "Cyber Field - Arcade Machine"@10913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[15]
push.v arg.argument0
pushi.e 99
cmp.i.v EQ
bf [17]

:[16]
push.s "scr_roomname_slash_scr_roomname_gml_9_0"@10914
conv.s.v
push.s "Cyber Field - Music Shop"@10915
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[17]
push.v arg.argument0
pushi.e 122
cmp.i.v EQ
bf [19]

:[18]
push.s "scr_roomname_slash_scr_roomname_gml_10_0"@10916
conv.s.v
push.s "Cyber City - Entrance"@10917
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[19]
push.v arg.argument0
pushi.e 125
cmp.i.v EQ
bf [21]

:[20]
push.s "scr_roomname_slash_scr_roomname_gml_11_0"@10918
conv.s.v
push.s "Cyber City - First Alleyway"@10919
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[21]
push.v arg.argument0
pushi.e 136
cmp.i.v EQ
bf [23]

:[22]
push.s "scr_roomname_slash_scr_roomname_gml_12_0_b"@10920
conv.s.v
push.s "Cyber City - Mouse Alley"@10921
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[23]
push.v arg.argument0
pushi.e 131
cmp.i.v EQ
bf [25]

:[24]
push.s "scr_roomname_slash_scr_roomname_gml_12_0"@10922
conv.s.v
push.s "Cyber City - Music Shop"@10923
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[25]
push.v arg.argument0
pushi.e 138
cmp.i.v EQ
bf [27]

:[26]
push.s "scr_roomname_slash_scr_roomname_gml_13_0"@10924
conv.s.v
push.s "Cyber City - Second Alleyway"@10925
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[27]
push.v arg.argument0
pushi.e 143
cmp.i.v EQ
bf [29]

:[28]
push.s "scr_roomname_slash_scr_roomname_gml_16_0_b"@10926
conv.s.v
push.s "Cyber City - Heights"@10927
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[29]
push.v arg.argument0
pushi.e 162
cmp.i.v EQ
bf [31]

:[30]
push.s "scr_roomname_slash_scr_roomname_gml_14_0"@10928
conv.s.v
push.s "Queen's Mansion - Guest Hall"@10929
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[31]
push.v arg.argument0
pushi.e 167
cmp.i.v EQ
bf [33]

:[32]
push.s "scr_roomname_slash_scr_roomname_gml_15_0"@10930
conv.s.v
push.s "Queen's Mansion - Entrance"@10931
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[33]
push.v arg.argument0
pushi.e 197
cmp.i.v EQ
bf [35]

:[34]
push.s "scr_roomname_slash_scr_roomname_gml_16_0"@10932
conv.s.v
push.s "Queen's Mansion - 3F"@10933
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[35]
push.v arg.argument0
pushi.e 203
cmp.i.v EQ
bf [37]

:[36]
push.s "scr_roomname_slash_scr_roomname_gml_17_0"@10934
conv.s.v
push.s "Queen's Mansion - Acid Tunnel"@10935
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[37]
push.v arg.argument0
pushi.e 181
cmp.i.v EQ
bf [39]

:[38]
push.s "scr_roomname_slash_scr_roomname_gml_19_0"@10936
conv.s.v
push.s "Queen's Mansion - Basement"@10937
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[39]
push.v arg.argument0
pushi.e 206
cmp.i.v EQ
bf [41]

:[40]
push.s "scr_roomname_slash_scr_roomname_gml_20_0"@10938
conv.s.v
push.s "Queen's Mansion - 4F"@10939
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[41]
push.v arg.argument0
pushi.e 4
cmp.i.v EQ
bf [43]

:[42]
push.s "scr_roomname_slash_scr_roomname_gml_23_0"@10940
conv.s.v
push.s "Queen's Mansion - Rooftop"@10941
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.roomname

:[43]
push.v self.roomname
ret.v

:[44]
exit.i

:[45]
push.i [function]gml_Script_scr_roomname
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_roomname
popz.v

:[end]