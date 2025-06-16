.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 620
cmp.i.v LTE
bf [4]

:[1]
push.v 82.x
pushi.e 590
cmp.i.v GT
bf [4]

:[2]
push.v 82.y
push.v self.y
pushi.e 6
add.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e 2
pop.v.i self.con
pushi.e -5
pushi.e 341
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 341
pop.v.v [array]self.flag
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_22_0_b"@35605
conv.s.v
push.s "\\E1* Whoa^1, go in there if you want^1, but...^1 I'm staying here./"@35606
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_22_0"@35607
conv.s.v
push.s "\\E0* Catti's working there today.&* She hates me./"@35608
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_25_0"@35609
conv.s.v
push.s "\\EA* So WHAT if I took Jockboy's hat once?&* I looked cool!/"@35610
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_27_0"@35611
conv.s.v
push.s "\\E0* Jockington fans.../"@35612
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_28_0"@35613
conv.s.v
push.s "\\E1* They're crazy^1, man./%"@35614
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
b [11]

:[10]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_mid_diner_slash_Step_0_gml_33_0"@35615
conv.s.v
push.s "\\E0* Kris^1, go in by yourself./%"@35616
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.v 82.y
push.v self.y
pushi.e 8
add.i.v
cmp.v.v GT
b [19]

:[18]
push.e 0

:[19]
bf [end]

:[20]
pushi.e -1
pop.v.i self.con

:[end]