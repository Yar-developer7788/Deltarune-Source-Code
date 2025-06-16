.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.extTrig
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [6]

:[3]
push.v self.x
pushi.e 320
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1067
pop.v.i self.sprite_index
b [6]

:[5]
pushi.e 1066
pop.v.i self.sprite_index

:[6]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1050
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[8]
pushbltn.v builtin.room
pushi.e 270
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1197
pop.v.i self.sprite_index

:[10]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1119
pop.v.i self.sprite_index

:[12]
pushbltn.v builtin.room
pushi.e 58
cmp.i.v EQ
bf [15]

:[13]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [15]

:[14]
pushi.e 1122
pop.v.i self.sprite_index

:[15]
pushbltn.v builtin.room
pushi.e 77
cmp.i.v EQ
bf [17]

:[16]
pushi.e 3122
pop.v.i self.sprite_index

:[17]
pushbltn.v builtin.room
pushi.e 73
cmp.i.v EQ
bf [25]

:[18]
push.v self.x
pushi.e 550
cmp.i.v GTE
bf [20]

:[19]
push.v self.x
pushi.e 650
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [24]

:[23]
pushi.e 1267
pop.v.i self.sprite_index
pushi.e 590
pop.v.i self.x
pushi.e 240
pop.v.i self.y
b [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1253
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[27]
pushbltn.v builtin.room
pushi.e 188
cmp.i.v EQ
bf [35]

:[28]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 2439
pop.v.i self.sprite_index

:[30]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 1
cmp.i.v EQ
bt [32]

:[31]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 7
cmp.i.v GTE
b [33]

:[32]
push.e 1

:[33]
bf [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
pushbltn.v builtin.room
pushi.e 41
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1156
pop.v.i self.sprite_index

:[37]
pushbltn.v builtin.room
pushi.e 94
cmp.i.v EQ
bf [40]

:[38]
push.v self.extflag
push.s "postSweet"@17748
cmp.s.v EQ
bf [40]

:[39]
pushi.e 1156
pop.v.i self.sprite_index

:[40]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[41]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]