.localvar 2 arguments
.localvar 107 i 7810
.localvar 19829 bglayer 7811

:[0]
pushi.e 1
pop.v.i self.drawblack
pushi.e 1
pop.v.i self.makelines
pushi.e 0
pop.v.i self.makecoaster
pushi.e -80
pop.v.i self.ymodifier
pushi.e 0
pop.v.i self.ymodifierb
pushi.e 1
pop.v.i self.makeclouds
pushi.e 1
pop.v.i self.makecity
pushi.e 1
pop.v.i self.makeground
pushi.e 1
pop.v.i self.ssymod
pushbltn.v builtin.room
pushi.e 86
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.makecity
pushi.e 0
pop.v.i self.makeground
pushi.e 0
pop.v.i self.makelines

:[2]
pushbltn.v builtin.room
pushi.e 88
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.ymodifier

:[4]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [6]

:[5]
pushi.e -100
pop.v.i self.ymodifier

:[6]
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [8]

:[7]
pushi.e 60
pop.v.i self.ymodifier
pushi.e 5
pop.v.i self.ssymod

:[8]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [10]

:[9]
pushi.e 60
pop.v.i self.ymodifier

:[10]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [12]

:[11]
pushi.e 60
pop.v.i self.ymodifier

:[12]
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [14]

:[13]
pushi.e 5
pop.v.i self.ymodifier

:[14]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.drawblack
pushi.e 1880
pop.v.i self.ymodifier

:[16]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.drawblack
pushi.e 7000
pop.v.i self.ymodifier

:[18]
pushi.e 82
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.bg

:[20]
popenv [19]
push.i 168631
setowner.e
pushi.e 3140
conv.i.v
pushi.e 3139
conv.i.v
pushi.e 3137
conv.i.v
pushi.e 3136
conv.i.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v self.layersprites
call.i gml_Script_camerax(argc=0)
pop.v.v self.drawx
call.i gml_Script_cameray(argc=0)
pop.v.v self.drawy
pushi.e 0
pop.v.i self.siner
pushi.e -80
pop.v.i self.y_offset
push.v self.ystart
pop.v.v self.y_startpos
pushi.e 0
pop.v.i self.clouds_drawy
pushi.e 0
pop.v.i self.ground_drawy
pushbltn.v builtin.room_width
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.room_scale
pushi.e 0
pop.v.i local.i

:[21]
pushloc.v local.i
push.v self.layersprites
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [53]

:[22]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 80
pop.v.i self.ymodifierb

:[24]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
push.v self.ymodifier
neg.v
pushi.e 10
sub.i.v
pop.v.v self.ymodifierb

:[26]
pushi.e 196
conv.i.v
push.v self.ymodifier
push.v self.ymodifierb
add.v.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bglayer
push.d 0.24
push.v self.layersprites
call.i array_length_1d(argc=1)
mul.v.d
push.d 0.02
pushloc.v local.i
mul.v.d
sub.v.v
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.ss
pushloc.v local.bglayer
pushi.e -9
push.v [stacktop]self.ss
push.d 0.2
mul.d.v
push.v self.ssymod
mul.v.v
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.ssy
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.layersprites
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.ssy

:[28]
push.v self.makecoaster
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[33]
push.v self.makecity
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[38]
push.v self.makeclouds
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[43]
push.v self.makeground
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[48]
push.v self.drawblack
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.drawblack
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.shadoweffect
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.citylights

:[50]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.shadoweffect

:[52]
push.i 1005500
pushloc.v local.i
pushi.e 100
mul.i.v
sub.v.i
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.ymodifierb
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[53]
push.i 1005000
pop.v.i self.depth
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [55]

:[54]
push.i 1005100
pop.v.i self.depth

:[55]
pushi.e 0
pop.v.i self.init

:[end]