.localvar 2 arguments

:[0]
pushi.e 1014
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 1014
pushenv [3]

:[2]
push.v self.car_convo
push.e 1
add.i.v
pop.v.v self.car_convo

:[3]
popenv [2]

:[4]
pushi.e 968
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 968
pushenv [7]

:[6]
pushi.e 1
pop.v.b self.got_banana
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[7]
popenv [6]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]