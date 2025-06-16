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
pushi.e 39
cmp.i.v EQ
bf [4]

:[3]
pushi.e 52
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [6]

:[5]
pushi.e 39
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 41
cmp.i.v EQ
bf [8]

:[7]
pushi.e 49
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [10]

:[9]
pushi.e 41
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
pushbltn.v builtin.room
pushi.e 40
cmp.i.v EQ
bf [14]

:[13]
pushi.e 60
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [16]

:[15]
pushi.e 48
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [18]

:[17]
pushi.e 37
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [20]

:[19]
pushi.e 50
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [22]

:[21]
pushi.e 35
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [26]

:[23]
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [25]

:[24]
pushi.e 71
conv.i.v
call.i room_goto(argc=1)
popz.v
b [26]

:[25]
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [28]

:[27]
pushi.e 66
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [43]

:[29]
push.v self.y
pushi.e 1050
cmp.i.v LT
bf [37]

:[30]
push.s "in shop doors block"@19746
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushglb.v global.entrance
call.i show_debug_message(argc=1)
popz.v
push.v self.x
pushi.e 500
cmp.i.v LT
bf [32]

:[31]
pushi.e 76
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [34]

:[33]
pushi.e 75
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
push.v self.x
pushi.e 940
cmp.i.v GT
bf [36]

:[35]
pushi.e 74
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
b [43]

:[37]
push.s "in normal doors block"@19747
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushglb.v global.entrance
call.i show_debug_message(argc=1)
popz.v
push.v self.x
pushi.e 500
cmp.i.v LT
bf [39]

:[38]
pushi.e 69
conv.i.v
call.i room_goto(argc=1)
popz.v

:[39]
push.v self.x
pushi.e 1320
cmp.i.v GT
bf [41]

:[40]
pushi.e 66
conv.i.v
call.i room_goto(argc=1)
popz.v

:[41]
push.v self.y
pushi.e 1400
cmp.i.v GT
bf [43]

:[42]
pushi.e 70
conv.i.v
call.i room_goto(argc=1)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 75
cmp.i.v EQ
bf [45]

:[44]
pushi.e 19
pop.v.i global.entrance
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[45]
pushbltn.v builtin.room
pushi.e 74
cmp.i.v EQ
bf [47]

:[46]
pushi.e 20
pop.v.i global.entrance
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[47]
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [49]

:[48]
pushi.e 21
pop.v.i global.entrance
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[49]
pushbltn.v builtin.room
pushi.e 69
cmp.i.v EQ
bf [53]

:[50]
pushi.e 18
pop.v.i global.entrance
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [52]

:[51]
pushi.e 71
conv.i.v
call.i room_goto(argc=1)
popz.v
b [53]

:[52]
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[53]
pushbltn.v builtin.room
pushi.e 68
cmp.i.v EQ
bf [54]

:[54]
pushbltn.v builtin.room
pushi.e 70
cmp.i.v EQ
bf [end]

:[55]
pushi.e 23
pop.v.i global.entrance
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [57]

:[56]
pushi.e 71
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[57]
pushi.e 72
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]