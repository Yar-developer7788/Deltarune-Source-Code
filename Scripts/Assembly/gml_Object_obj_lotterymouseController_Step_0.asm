.localvar 2 arguments
.localvar 37634 hints 18986

:[0]
push.v self.victory
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e -5
pushi.e 378
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 377
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.victory
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.timer

:[6]
push.v self.victory
pushi.e 1
cmp.i.v EQ
bf [15]

:[7]
pushi.e 1
pop.v.i global.interact
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [9]

:[8]
push.d 0.8
conv.d.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_scr_camerareset(argc=1)
popz.v

:[9]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [15]

:[10]
pushi.e 1273
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.inert

:[12]
popenv [11]
pushi.e 1275
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.inert

:[14]
popenv [13]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_lotterymouseController_slash_Step_0_gml_18_0"@37635
conv.s.v
push.s "* (Sounds like the bridge was raised.)/%"@37636
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i global.facing
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.victory
push.e 1
add.i.v
pop.v.v self.victory

:[15]
push.v self.victory
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
pushi.e 1224
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.hints
pushloc.v local.hints
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]