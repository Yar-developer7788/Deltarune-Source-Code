.localvar 2 arguments

:[0]
pushi.e 1508
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
popenv [1]
pushi.e 2
pop.v.i global.entrance
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i room_goto_previous(argc=0)
popz.v

:[end]