.localvar 2 arguments

:[0]
pushi.e 1122
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.pressed
pushi.e 0
pop.v.i self.pressable

:[2]
popenv [1]
pushi.e 0
pop.v.i global.facing
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]