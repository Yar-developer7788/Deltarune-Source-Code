.localvar 2 arguments

:[0]
pushi.e 23
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
pushi.e 294
cmp.i.v EQ
bf [2]

:[1]
pushi.e 299
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v builtin.room
pushi.e 299
cmp.i.v EQ
bf [4]

:[3]
pushi.e 294
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [6]

:[5]
pushi.e 308
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 308
cmp.i.v EQ
bf [8]

:[7]
pushi.e 292
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [10]

:[9]
pushi.e 291
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v builtin.room
pushi.e 291
cmp.i.v EQ
bf [end]

:[11]
pushi.e 290
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]