.localvar 2 arguments

:[0]
pushi.e 4
pop.v.i global.entrance
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
pushbltn.v builtin.room
call.i room_previous(argc=1)
call.i room_previous(argc=1)
call.i room_goto(argc=1)
popz.v

:[end]