.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i global.facing
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.room_cc_5f
call.i room_goto(argc=1)
popz.v

:[end]