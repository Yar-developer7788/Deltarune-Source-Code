.localvar 2 arguments
.localvar 19880 spawn 7971
.localvar 19881 _y 7972
.localvar 19882 _x 7973
.localvar 6801 c 7975

:[0]
push.v self.is_active
conv.v.b
bf [end]

:[1]
push.v self.time
pushi.e 1
add.i.v
pop.v.v self.time
push.v self.time
pushi.e 60
mod.i.v
pushi.e 0
cmp.i.v EQ
pop.v.b local.spawn
pushbltn.v builtin.room_height
push.d 0.5
mul.d.v
pop.v.v local._y
pushbltn.v builtin.current_time
pushbltn.v builtin.room_width
mod.v.v
pop.v.v local._x
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [33]

:[2]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [15]

:[3]
push.v 82.x
pushi.e 2320
cmp.i.v LTE
bf [5]

:[4]
push.v 82.x
pushi.e 1080
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [11]

:[7]
pushi.e 346
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[8]
push.v 346.is_active
conv.v.b
not.b
bf [10]

:[9]
pushi.e 1
pop.v.b 346.is_active

:[10]
push.v self.time
pushi.e 40
mod.i.v
pushi.e 0
cmp.i.v EQ
pop.v.b local.spawn
pushbltn.v builtin.room_height
pushi.e 220
sub.i.v
pop.v.v local._y
push.v 82.x
pushi.e 200
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v local._x
b [15]

:[11]
pushi.e 346
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [14]

:[12]
push.v 346.is_active
conv.v.b
bf [14]

:[13]
pushi.e 0
pop.v.b 346.is_active
pushi.e 1
pop.v.b 346.inactive_cleanup

:[14]
pushi.e -1
pop.v.i local.spawn

:[15]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bt [17]

:[16]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [33]

:[19]
push.v self.time
pushi.e 50
mod.i.v
pushi.e 40
cmp.i.v EQ
pop.v.b local.spawn
pushi.e 800
pushi.e 80
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v local._y
call.i gml_Script_camerax(argc=0)
pushi.e 640
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 1000
conv.i.v
call.i max(argc=2)
pop.v.v local._x
pushloc.v local._x
pushbltn.v builtin.room_width
pushi.e 200
sub.i.v
cmp.v.v GT
bf [21]

:[20]
pushbltn.v builtin.room_width
pushi.e 200
sub.i.v
pop.v.v local._x

:[21]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [23]

:[22]
push.v local._x
pushi.e 320
add.i.v
pop.v.v local._x

:[23]
push.v 82.y
pushi.e 500
cmp.i.v LTE
bf [25]

:[24]
pushi.e 300
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local._y

:[25]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [30]

:[26]
push.v 82.x
pushi.e 900
cmp.i.v LT
bf [28]

:[27]
pushi.e 0
pop.v.i local.spawn
b [29]

:[28]
pushi.e 1
pop.v.i self.is_active

:[29]
b [31]

:[30]
pushi.e 300
pop.v.i local._y
call.i gml_Script_camerax(argc=0)
pushi.e 700
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 200
add.i.v
pop.v.v local._x

:[31]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [33]

:[32]
pushi.e 0
pop.v.i local.spawn

:[33]
pushloc.v local.spawn
conv.v.b
bf [end]

:[34]
pushi.e 226
conv.i.v
pushloc.v local._y
pushloc.v local._x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.c
pushi.e -1
push.v self.fireworkcount
conv.v.i
push.v [array]self.fireworksprite
pushloc.v local.c
pushi.e -9
pop.v.v [stacktop]self.mySprite
push.v self.fireworkcount
push.e 1
add.i.v
pop.v.v self.fireworkcount
push.v self.fireworkcount
pushi.e 2
cmp.i.v GT
bf [36]

:[35]
pushi.e 0
pop.v.i self.fireworkcount

:[36]
push.l 1
conv.l.v
push.l 2
conv.l.v
push.l 0
conv.l.v
call.i choose(argc=3)
pushloc.v local.c
pushi.e -9
pop.v.v [stacktop]self.colorProfile
pushloc.v local.c
pushi.e -9
push.v [stacktop]self.colorProfile
push.l 1
cmp.l.v EQ
bf [end]

:[37]
pushi.e 255
conv.i.v
pushi.e 100
conv.i.v
pushi.e 255
conv.i.v
call.i irandom(argc=1)
call.i make_colour_hsv(argc=3)
pushloc.v local.c
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[end]