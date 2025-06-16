.localvar 2 arguments
.localvar 6706 d 17643

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.y
pushi.e 1220
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
pop.v.i self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_transformed_slash_Step_0_gml_17_0"@36277
conv.s.v
push.s "* (Kris... I bet you have a lot of people to talk to.)/"@36278
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_transformed_slash_Step_0_gml_18_0"@36279
conv.s.v
push.s "* (But, you don't have to do \\cYeverything at once\\c0.)/"@36280
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_transformed_slash_Step_0_gml_19_0"@36281
conv.s.v
push.s "* (\\cYSAVE\\c0 and take a break anytime you want, OK?)/%"@36282
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 443
pop.v.v [array]self.flag

:[end]