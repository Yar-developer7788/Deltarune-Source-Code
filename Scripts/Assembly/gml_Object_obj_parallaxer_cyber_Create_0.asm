.localvar 2 arguments
.localvar 19828 layersprites 7794
.localvar 107 i 7796
.localvar 19829 bglayer 7797

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
pushi.e -10
pop.v.i self.ymodifier

:[4]
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1100
pop.v.i self.ymodifier
pushi.e 5
pop.v.i self.ssymod

:[6]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.drawblack
pushi.e 2468
pop.v.i self.ymodifier

:[8]
push.v self.makelines
conv.v.b
bf [11]

:[9]
pushi.e 206
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 206
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[11]
pushi.e 82
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.bg

:[13]
popenv [12]
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
pop.v.v local.layersprites
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushloc.v local.layersprites
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [52]

:[15]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e 80
pop.v.i self.ymodifierb

:[17]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.ymodifier
neg.v
pushi.e 10
sub.i.v
pop.v.v self.ymodifierb

:[19]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [22]

:[20]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.ymodifier
pushi.e 60
sub.i.v
pop.v.v self.ymodifier

:[22]
pushi.e 195
conv.i.v
push.v self.ymodifier
push.v self.ymodifierb
add.v.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bglayer
push.d 0.24
pushloc.v local.layersprites
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
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.layersprites
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.ssy

:[24]
push.v self.makecoaster
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[29]
push.v self.makecity
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[34]
push.v self.makeclouds
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[39]
push.v self.makeground
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 0
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.visible

:[44]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.shadoweffect
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.citylights

:[46]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
pushloc.v local.bglayer
pushi.e -9
pop.v.i [stacktop]self.shadoweffect

:[48]
push.i 1005500
pushloc.v local.i
pushi.e 100
mul.i.v
sub.v.i
pushloc.v local.bglayer
pushi.e -9
pop.v.v [stacktop]self.depth
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [51]

:[49]
pushloc.v local.i
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.ymodifier
pushi.e 60
add.i.v
pop.v.v self.ymodifier

:[51]
pushi.e 0
pop.v.i self.ymodifierb
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[52]
push.i 1005000
pop.v.i self.depth

:[end]