.localvar 2 arguments

:[0]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [5]

:[1]
push.v self.target
pushi.e -9
push.v [stacktop]self.going
push.s "left"@5994
cmp.s.v EQ
bf [3]

:[2]
pushi.e 1225
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pushi.e 156
sub.i.v
pop.v.v self.y

:[3]
push.v self.target
pushi.e -9
push.v [stacktop]self.going
push.s "right"@4637
cmp.s.v EQ
bf [5]

:[4]
pushi.e 1281
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
add.i.v
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pushi.e 150
sub.i.v
pop.v.v self.y

:[5]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [10]

:[6]
push.v self.target
pushi.e -9
push.v [stacktop]self.going
push.s "left"@5994
cmp.s.v EQ
bf [8]

:[7]
pushi.e 1281
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
sub.i.v
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pushi.e 150
sub.i.v
pop.v.v self.y

:[8]
push.v self.target
pushi.e -9
push.v [stacktop]self.going
push.s "right"@4637
cmp.s.v EQ
bf [10]

:[9]
pushi.e 1225
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
sub.i.v
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pushi.e 156
sub.i.v
pop.v.v self.y

:[10]
push.v self.target
pushi.e -9
push.v [stacktop]self.tellspeed
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
push.v self.target
pushi.e -9
push.v [stacktop]self.tellspeed
call.i abs(argc=1)
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.image_speed
b [13]

:[12]
push.d 0.25
pop.v.d self.image_speed

:[13]
push.v self.sprite_index
pushi.e 1281
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_xscale
pushi.e 2
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 30
pop.v.i self.colX
pushi.e 116
pop.v.i self.colY

:[18]
push.v self.sprite_index
pushi.e 1281
cmp.i.v EQ
bf [20]

:[19]
push.v self.image_xscale
pushi.e -2
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e -71
pop.v.i self.colX
pushi.e 116
pop.v.i self.colY

:[23]
push.v self.sprite_index
pushi.e 1225
cmp.i.v EQ
bf [25]

:[24]
push.v self.image_xscale
pushi.e 2
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 61
pop.v.i self.colX
pushi.e 122
pop.v.i self.colY

:[28]
push.v self.sprite_index
pushi.e 1225
cmp.i.v EQ
bf [30]

:[29]
push.v self.image_xscale
pushi.e -2
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e -101
pop.v.i self.colX
pushi.e 122
pop.v.i self.colY

:[33]
push.v self.y
push.v self.colY
add.v.v
pushi.e 34
add.i.v
push.v self.x
push.v self.colX
add.v.v
pushi.e 40
add.i.v
push.v self.y
push.v self.colY
add.v.v
push.v self.x
push.v self.colX
add.v.v
call.i gml_Script_charaY(argc=0)
call.i gml_Script_charaX(argc=0)
call.i point_in_rectangle(argc=6)
conv.v.b
bt [38]

:[34]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
push.v self.y
push.v self.colY
add.v.v
pushi.e 34
add.i.v
push.v self.x
push.v self.colX
add.v.v
pushi.e 40
add.i.v
push.v self.y
push.v self.colY
add.v.v
push.v self.x
push.v self.colX
add.v.v
push.v 276.y
push.v 276.sprite_height
add.v.v
pushi.e 8
sub.i.v
push.v 276.x
push.v 276.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i point_in_rectangle(argc=6)
conv.v.b
b [37]

:[36]
push.e 0

:[37]
b [39]

:[38]
push.e 1

:[39]
bf [end]

:[40]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [end]

:[41]
pushi.e 1296
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [55]

:[42]
pushi.e 1296
pushenv [54]

:[43]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newenem
push.v self.newenem
pushi.e -9
pushenv [53]

:[44]
push.v other.sprite_index
pushi.e 1281
cmp.i.v EQ
bf [49]

:[45]
push.v other.image_xscale
pushi.e -2
cmp.i.v EQ
bf [47]

:[46]
push.v other.x
pushi.e 110
sub.i.v
pop.v.v self.x
push.v other.y
pushi.e 2
add.i.v
pop.v.v self.y
b [48]

:[47]
push.v other.x
pushi.e 12
sub.i.v
pop.v.v self.x
push.v other.y
pushi.e 2
add.i.v
pop.v.v self.y

:[48]
b [52]

:[49]
push.v other.image_xscale
pushi.e -2
cmp.i.v EQ
bf [51]

:[50]
push.v other.x
pushi.e 142
sub.i.v
pop.v.v self.x
push.v other.y
pop.v.v self.y
b [52]

:[51]
push.v other.x
pushi.e 24
add.i.v
pop.v.v self.x
push.v other.y
pop.v.v self.y

:[52]
pushi.e 56
pop.v.i self.myencounter
pushi.e 1253
pop.v.i self.sprite_index
pushi.e 1253
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.facing

:[53]
popenv [44]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [43]

:[55]
pushi.e 1261
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[56]
pushi.e 1
pop.v.i 1261.triggered

:[end]