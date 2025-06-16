.localvar 2 arguments
.localvar 14240 xoffset 12442
.localvar 25483 uppersuckoffset 12443
.localvar 25484 lowersuckoffset 12444

:[0]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [11]

:[2]
push.v 631.x
push.v self.minx
pushi.e 3
add.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.minx
pushi.e 3
add.i.v
pop.v.v 631.x

:[4]
push.v 631.y
push.v self.miny
pushi.e 3
add.i.v
cmp.v.v LT
bf [6]

:[5]
push.v self.miny
pushi.e 3
add.i.v
pop.v.v 631.y

:[6]
push.v 631.y
push.v self.maxy
pushi.e 20
sub.i.v
cmp.v.v GT
bf [8]

:[7]
push.v self.maxy
pushi.e 20
sub.i.v
pop.v.v 631.y

:[8]
push.v 631.x
push.v self.maxx
pushi.e 20
sub.i.v
cmp.v.v GT
bf [10]

:[9]
push.v self.maxx
pushi.e 20
sub.i.v
pop.v.v 631.x

:[10]
exit.i

:[11]
push.v self.suckpower
push.v self.suckx
push.v self.maxx
call.i lerp(argc=3)
pop.v.v self.rborder
push.v self.miny
pop.v.v self.uborder
push.v self.maxy
pop.v.v self.dborder
push.v self.snapback
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.stopthesucc
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v 631.x
push.v self.suckpower
add.v.v
pop.v.v 631.x

:[14]
push.v self.snapback
pushi.e 0
cmp.i.v LTE
bf [17]

:[15]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v LTE
bf [17]

:[16]
push.v 631.x
push.v self.rborder
pushi.e 22
sub.i.v
cmp.v.v GTE
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
push.v self.suckpower
pop.v.v self.snapback
push.v self.suckpower
push.d 0.5
cmp.d.v GT
bf [22]

:[20]
pushi.e 193
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [22]

:[21]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.suckpower
pushi.e 4
mul.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakex
push.v self.suckpower
pushi.e 4
mul.i.v
call.i ceil(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.shakey

:[22]
push.v self.snapback
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
push.v 631.x
pushi.e 20
pushi.e 2
conv.i.v
push.v self.snapback
call.i gml_Script_scr_ease_in(argc=2)
mul.v.i
sub.v.v
pop.v.v 631.x
push.v self.snapback
push.d 0.1
sub.d.v
pop.v.v self.snapback

:[24]
push.v 631.x
push.v self.minx
pushi.e 3
add.i.v
cmp.v.v LT
bf [26]

:[25]
push.v self.minx
pushi.e 3
add.i.v
pop.v.v 631.x

:[26]
push.v 631.x
push.v self.rborder
pushi.e 20
sub.i.v
cmp.v.v GT
bf [28]

:[27]
push.v self.rborder
pushi.e 20
sub.i.v
pop.v.v 631.x

:[28]
push.v 631.x
push.v self.minx
pushi.e 3
add.i.v
sub.v.v
push.v self.rborder
pushi.e 20
sub.i.v
push.v self.minx
pushi.e 3
add.i.v
sub.v.v
div.v.v
pop.v.v local.xoffset
push.v self.upper_sucky
push.v self.miny
sub.v.v
pushloc.v local.xoffset
mul.v.v
push.v self.suckpower
mul.v.v
pop.v.v local.uppersuckoffset
push.v self.maxy
push.v self.lower_sucky
sub.v.v
pushloc.v local.xoffset
mul.v.v
push.v self.suckpower
mul.v.v
pop.v.v local.lowersuckoffset
push.v 631.y
push.v self.uborder
pushi.e 3
add.i.v
pushloc.v local.uppersuckoffset
add.v.v
cmp.v.v LT
bf [30]

:[29]
push.v self.uborder
pushi.e 3
add.i.v
pushloc.v local.uppersuckoffset
add.v.v
pop.v.v 631.y

:[30]
push.v 631.y
push.v self.dborder
pushi.e 20
sub.i.v
pushloc.v local.lowersuckoffset
sub.v.v
cmp.v.v GT
bf [32]

:[31]
push.v self.dborder
pushi.e 20
sub.i.v
pushloc.v local.lowersuckoffset
sub.v.v
pop.v.v 631.y

:[32]
push.v 631.y
push.v self.uborder
pushi.e 3
add.i.v
cmp.v.v LT
bf [34]

:[33]
push.v self.uborder
pushi.e 3
add.i.v
pop.v.v 631.y

:[34]
push.v 631.y
push.v self.dborder
pushi.e 20
sub.i.v
cmp.v.v GT
bf [end]

:[35]
push.v self.dborder
pushi.e 20
sub.i.v
pop.v.v 631.y

:[end]