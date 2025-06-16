.localvar 2 arguments

:[0]
pushi.e 24
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
pushi.e 326
cmp.i.v EQ
bf [2]

:[1]
pushi.e 328
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v builtin.room
pushi.e 328
cmp.i.v EQ
bf [4]

:[3]
pushi.e 326
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 340
cmp.i.v EQ
bf [6]

:[5]
pushi.e 414
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 423
cmp.i.v EQ
bf [8]

:[7]
pushi.e 363
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 370
cmp.i.v EQ
bf [15]

:[9]
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pop.v.v self.ch
push.v self.ch
pushi.e 50
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 910
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 423
conv.i.v
call.i room_goto(argc=1)
popz.v
b [15]

:[14]
pushi.e 369
conv.i.v
call.i room_goto(argc=1)
popz.v

:[15]
pushbltn.v builtin.room
pushi.e 288
cmp.i.v EQ
bf [17]

:[16]
pushi.e 286
conv.i.v
call.i room_goto(argc=1)
popz.v

:[17]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [19]

:[18]
pushi.e 288
conv.i.v
call.i room_goto(argc=1)
popz.v

:[19]
pushbltn.v builtin.room
pushi.e 295
cmp.i.v EQ
bf [21]

:[20]
pushi.e 310
conv.i.v
call.i room_goto(argc=1)
popz.v

:[21]
pushbltn.v builtin.room
pushi.e 310
cmp.i.v EQ
bf [23]

:[22]
pushi.e 295
conv.i.v
call.i room_goto(argc=1)
popz.v

:[23]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v EQ
bf [27]

:[24]
push.v self.x
pushi.e 1300
cmp.i.v GTE
bf [26]

:[25]
pushi.e 390
conv.i.v
call.i room_goto(argc=1)
popz.v
b [27]

:[26]
pushi.e 412
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[27]
pushbltn.v builtin.room
pushi.e 404
cmp.i.v EQ
bf [29]

:[28]
pushi.e 415
conv.i.v
call.i room_goto(argc=1)
popz.v

:[29]
pushbltn.v builtin.room
pushi.e 390
cmp.i.v EQ
bf [38]

:[30]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 388
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 395
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 404
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushi.e -5
pushi.e 239
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushi.e 392
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v builtin.room
pushi.e 388
cmp.i.v EQ
bf [40]

:[39]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 239
pop.v.v [array]self.flag
pushi.e 390
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v builtin.room
pushi.e 395
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 239
pop.v.v [array]self.flag
pushi.e 390
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v builtin.room
pushi.e 392
cmp.i.v EQ
bf [44]

:[43]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 239
pop.v.v [array]self.flag
pushi.e 390
conv.i.v
call.i room_goto(argc=1)
popz.v

:[44]
pushbltn.v builtin.room
pushi.e 394
cmp.i.v EQ
bf [end]

:[45]
pushi.e 385
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]