.localvar 2 arguments

:[0]
pushi.e 24
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
pushi.e 65
cmp.i.v EQ
bf [2]

:[1]
pushi.e 66
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [4]

:[3]
pushi.e 65
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 33
cmp.i.v EQ
bf [6]

:[5]
pushi.e 31
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [8]

:[7]
pushi.e 33
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 40
cmp.i.v EQ
bf [10]

:[9]
pushi.e 60
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [12]

:[11]
pushi.e 40
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [15]

:[14]
pushi.e 236
conv.i.v
call.i room_goto(argc=1)
popz.v

:[15]
pushbltn.v builtin.room
pushi.e 99
cmp.i.v EQ
bf [end]

:[16]
pushi.e 237
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]