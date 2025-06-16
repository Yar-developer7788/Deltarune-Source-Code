.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i global.entrance
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[end]