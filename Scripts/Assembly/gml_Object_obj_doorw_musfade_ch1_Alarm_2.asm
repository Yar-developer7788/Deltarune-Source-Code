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
pushi.e 395
cmp.i.v EQ
bf [2]

:[1]
pushi.e 391
conv.i.v
call.i room_goto(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 239
pop.v.v [array]self.flag

:[2]
pushbltn.v builtin.room
pushi.e 404
cmp.i.v EQ
bf [4]

:[3]
pushi.e 391
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 239
pop.v.v [array]self.flag

:[4]
pushbltn.v builtin.room
pushi.e 391
cmp.i.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 395
conv.i.v
call.i room_goto(argc=1)
popz.v

:[7]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 404
conv.i.v
call.i room_goto(argc=1)
popz.v

:[9]
pushbltn.v builtin.room
pushi.e 385
cmp.i.v EQ
bf [11]

:[10]
pushi.e 394
conv.i.v
call.i room_goto(argc=1)
popz.v

:[11]
pushbltn.v builtin.room
pushi.e 394
cmp.i.v EQ
bf [end]

:[12]
pushi.e 385
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]