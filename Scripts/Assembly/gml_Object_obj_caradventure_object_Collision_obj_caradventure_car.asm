.localvar 2 arguments
.localvar 6706 d 9167

:[0]
push.v self.type
push.s "banana"@21209
cmp.s.v EQ
bf [end]

:[1]
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[2]
pushi.e 1
pop.v.i self.triggertalk
pushi.e 1
pop.v.i self.bananahit
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[3]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [7]

:[4]
pushi.e 64
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.forcebutton1

:[6]
popenv [5]

:[7]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_caradventure_object_slash_Collision_c6676890_fdcf_45e4_aea6_c7948966d056_gml_17_0"@21220
conv.s.v
push.s "\\E1* Potassium/%"@21221
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.zurasu

:[8]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[end]