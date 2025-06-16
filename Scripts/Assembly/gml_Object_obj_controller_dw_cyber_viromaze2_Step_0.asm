.localvar 2 arguments

:[0]
push.v self.noleavefield
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 352
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v 82.x
pushi.e 240
cmp.i.v GTE
bf [6]

:[5]
pushi.e 287
conv.i.v
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noleavefield

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[7]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_cyber_viromaze2_slash_Step_0_gml_9_0"@37741
conv.s.v
push.s "* Sounded like a forcefield deactivating./%"@37742
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1250
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 3
pop.v.i 1250.con

:[9]
push.v self.noleavefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[10]
push.v self.noleavefield
pushi.e -9
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[13]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 352
pop.v.v [array]self.flag
pushi.e 268
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushbltn.v builtin.room_width
pushi.e 5
mul.i.v
pop.v.v 268.x
pushbltn.v builtin.room_height
pushi.e 5
mul.i.v
pop.v.v 268.y

:[15]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[16]
pushi.e 287
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
pushi.e 2
pop.v.i self.con

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[21]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[22]
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[end]