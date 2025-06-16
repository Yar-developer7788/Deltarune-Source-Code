.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 883
conv.i.v
pushi.e 40
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.wallwindow
push.v self.wallwindow
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.b self.show_border
pushglb.v global.plot
pushi.e 0
cmp.i.v GT
bf [6]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.wallwindow
pushi.e -9
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.image_index

:[5]
popenv [4]
pushi.e 1
pop.v.i self.image_index
b [end]

:[6]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.s "obj_krisroom_slash_Create_0_gml_16_0"@15419
conv.s.v
push.s "The Beginning"@14608
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 897
conv.i.v
pushi.e 97
conv.i.v
pushi.e 151
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.t
push.v self.t
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[9]
popenv [8]
pushi.e 0
pop.v.i global.msc
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Create_0_gml_23_0"@15420
conv.s.v
push.s "* KRIS!/"@15421
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_krisroom_slash_Create_0_gml_24_0"@15422
conv.s.v
push.s "* Kris^1, if you do not wake up^1, we will be late for school!/%"@15423
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
b [end]

:[10]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
pushi.e 0
pop.v.i global.msc
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing

:[end]