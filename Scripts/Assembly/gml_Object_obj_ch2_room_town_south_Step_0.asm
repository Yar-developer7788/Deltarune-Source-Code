.localvar 2 arguments
.localvar 6706 d 17647

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.y
pushi.e 70
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
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_south_slash_Step_0_gml_17_0"@36283
conv.s.v
push.s "\\E1* (Hey Kris^1, shouldn't we go check on Lancer?)/"@36284
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_south_slash_Step_0_gml_18_0"@36285
conv.s.v
push.s "\\E0* (He should be back in the school closet^1, right...?)/%"@36286
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
pushi.e 444
pop.v.v [array]self.flag

:[end]