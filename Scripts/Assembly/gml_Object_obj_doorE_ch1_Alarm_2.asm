.localvar 2 arguments

:[0]
pushi.e 6
pop.v.i global.entrance
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushbltn.v builtin.room
call.i room_next(argc=1)
call.i room_next(argc=1)
call.i room_next(argc=1)
call.i room_goto(argc=1)
popz.v

:[end]