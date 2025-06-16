.localvar 2 arguments
.localvar 19748 man_room 7638

:[0]
pushi.e 23
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
pushi.e 37
cmp.i.v EQ
bf [6]

:[1]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [3]

:[2]
push.v self.x
pushi.e 1140
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 22
pop.v.i global.entrance
pushi.e 57
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 57
cmp.i.v EQ
bf [8]

:[7]
pushi.e 22
pop.v.i global.entrance
pushi.e 37
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [22]

:[9]
pushi.e 24
pop.v.i global.entrance
pushi.e -5
pushi.e 917
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 150
conv.i.v
call.i room_goto(argc=1)
popz.v
b [22]

:[14]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [18]

:[15]
pushi.e -5
pushi.e 917
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [18]

:[16]
pushi.e -5
pushi.e 918
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 50
conv.i.v
call.i random(argc=1)
call.i ceil(argc=1)
pushi.e 50
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
pop.v.b local.man_room
pushloc.v local.man_room
conv.v.b
bf [21]

:[20]
pushi.e 151
conv.i.v
call.i room_goto(argc=1)
popz.v
b [22]

:[21]
pushi.e 152
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [24]

:[23]
pushi.e 23
pop.v.i global.entrance
pushi.e 140
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v builtin.room
pushi.e 151
cmp.i.v EQ
bf [26]

:[25]
pushi.e 24
pop.v.i global.entrance
pushi.e 133
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [28]

:[27]
pushi.e 22
pop.v.i global.entrance
pushi.e 238
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [30]

:[29]
pushi.e 22
pop.v.i global.entrance
pushi.e 39
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v builtin.room
pushi.e 179
cmp.i.v EQ
bf [32]

:[31]
pushi.e 20
pop.v.i global.entrance
pushi.e 174
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [34]

:[33]
pushi.e 20
pop.v.i global.entrance
pushi.e 179
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v builtin.room
pushi.e 118
cmp.i.v EQ
bf [36]

:[35]
pushi.e 239
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [end]

:[37]
pushi.e 237
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]