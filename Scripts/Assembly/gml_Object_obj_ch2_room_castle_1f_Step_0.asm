.localvar 2 arguments

:[0]
push.v 82.y
push.v self.y
cmp.v.v LT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 276
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.fun
pushi.e 0
pop.v.i self.image_index

:[6]
popenv [5]

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_1f_slash_Step_0_gml_19_0"@35971
conv.s.v
push.s "\\E3* Just wanted to show off your huge house^1, huh?/"@35972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_1f_slash_Step_0_gml_21_0"@35973
conv.s.v
push.s "\\E2* No^1, what I want to show you is upstairs!/%"@35974
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
pushi.e 276
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.fun

:[15]
popenv [14]
pushglb.v global.plot
pushi.e 13
cmp.i.v LT
bf [17]

:[16]
pushi.e 13
pop.v.i global.plot

:[17]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]