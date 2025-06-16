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
pushi.e 294
cmp.i.v EQ
bf [6]

:[5]
pushi.e 307
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [8]

:[7]
pushi.e 294
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 296
cmp.i.v EQ
bf [10]

:[9]
pushi.e 304
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v builtin.room
pushi.e 304
cmp.i.v EQ
bf [12]

:[11]
pushi.e 296
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v builtin.room
pushi.e 310
cmp.i.v EQ
bf [14]

:[13]
pushi.e 295
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v builtin.room
pushi.e 295
cmp.i.v EQ
bf [16]

:[15]
pushi.e 310
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [18]

:[17]
pushi.e 303
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [20]

:[19]
pushi.e 292
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [22]

:[21]
pushi.e 305
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 305
cmp.i.v EQ
bf [24]

:[23]
pushi.e 290
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v builtin.room
pushi.e 387
cmp.i.v EQ
bf [26]

:[25]
pushi.e 386
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [28]

:[27]
pushi.e 387
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v builtin.room
pushi.e 367
cmp.i.v EQ
bf [30]

:[29]
pushi.e 366
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v builtin.room
pushi.e 366
cmp.i.v EQ
bf [32]

:[31]
pushi.e 367
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v builtin.room
pushi.e 377
cmp.i.v EQ
bf [34]

:[33]
pushi.e 371
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [38]

:[35]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [37]

:[36]
pushi.e 372
conv.i.v
call.i room_goto(argc=1)
popz.v
b [38]

:[37]
pushi.e 377
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v builtin.room
pushi.e 374
cmp.i.v EQ
bf [42]

:[39]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [41]

:[40]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 292
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 291
pop.v.v [array]self.flag
pushi.e 371
conv.i.v
call.i room_goto(argc=1)
popz.v
b [42]

:[41]
pushi.e 375
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v builtin.room
pushi.e 385
cmp.i.v EQ
bf [46]

:[43]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [45]

:[44]
call.i room_goto_previous(argc=0)
popz.v
b [46]

:[45]
pushi.e 378
conv.i.v
call.i room_goto(argc=1)
popz.v

:[46]
pushbltn.v builtin.room
pushi.e 378
cmp.i.v EQ
bf [50]

:[47]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [49]

:[48]
call.i room_goto_next(argc=0)
popz.v
b [50]

:[49]
pushi.e 385
conv.i.v
call.i room_goto(argc=1)
popz.v

:[50]
pushbltn.v builtin.room
pushi.e 372
cmp.i.v EQ
bt [52]

:[51]
pushbltn.v builtin.room
pushi.e 375
cmp.i.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [end]

:[54]
push.v self.y
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [60]

:[55]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 292
pop.v.v [array]self.flag
pushbltn.v builtin.room
pushi.e 372
cmp.i.v EQ
bf [57]

:[56]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 291
pop.v.v [array]self.flag
pushi.e 371
conv.i.v
call.i room_goto(argc=1)
popz.v

:[57]
pushbltn.v builtin.room
pushi.e 375
cmp.i.v EQ
bf [59]

:[58]
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 291
pop.v.v [array]self.flag
pushi.e 374
conv.i.v
call.i room_goto(argc=1)
popz.v

:[59]
b [end]

:[60]
pushi.e 1544
pushenv [62]

:[61]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[62]
popenv [61]

:[end]