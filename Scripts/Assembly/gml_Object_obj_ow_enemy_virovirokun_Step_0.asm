.localvar 2 arguments

:[0]
push.v self.gentimer
pushi.e 1
add.i.v
pop.v.v self.gentimer
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.x
pushi.e 360
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.shottimer
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=3)
pop.v.v self.hspeed

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[4]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [6]

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v LTE
bf [11]

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[14]
push.v self.timer
push.v self.timermax
cmp.v.v GTE
bf [28]

:[15]
push.v self.shotcount
pushi.e 1
add.i.v
pop.v.v self.shotcount
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=3)
pop.v.v self.hspeed
pushi.e 7
conv.i.v
pushi.e -7
conv.i.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v 82.x
push.v self.x
cmp.v.v LT
bf [17]

:[16]
push.v self.hspeed
pushi.e -1
push.v self.multiplier
mul.v.i
mul.v.v
pop.v.v self.hspeed

:[17]
pushi.e 265
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.hspeed
pushi.e 4
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spear
push.v 82.x
push.v 82.xprevious
cmp.v.v NEQ
bf [20]

:[18]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [20]

:[19]
push.v self.spear
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.v 82.x
push.v 82.xprevious
sub.v.v
pushi.e 8
conv.i.d
div.d.v
add.v.v
pop.i.v [stacktop]self.hspeed

:[20]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[21]
push.v self.spear
pushi.e -9
dup.i 4
push.v [stacktop]self.direction
pushi.e 15
conv.i.v
call.i random(argc=1)
pushi.e 15
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.i.v [stacktop]self.direction

:[22]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [24]

:[23]
push.v self.spear
pushi.e -9
push.v [stacktop]self.direction
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[24]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[25]
push.v self.depth
pushi.e 20
sub.i.v
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.depth

:[26]
pushi.e 0
pop.v.i self.timer
pushi.e 26
conv.i.v
pushi.e 22
conv.i.v
pushi.e 16
conv.i.v
call.i choose(argc=3)
pop.v.v self.timermax
push.v self.gentimer
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.vspeed
push.v 82.x
push.v self.battleEndPos
cmp.v.v GTE
bf [28]

:[27]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.shottimer
push.v self.y
call.i floor(argc=1)
pop.v.v self.y
push.v self.x
call.i floor(argc=1)
pop.v.v self.x

:[28]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [44]

:[29]
push.v self.hspeed
pushi.e 9
mul.i.v
pop.v.v self.hspeed
push.v self.hspeed
push.d -0.1
cmp.d.v GT
bf [31]

:[30]
pushi.e 0
pop.v.i self.hspeed

:[31]
push.v self.hspeed
push.d 0.1
cmp.d.v LT
bf [33]

:[32]
pushi.e 0
pop.v.i self.hspeed

:[33]
push.v self.y
pushi.e 142
cmp.i.v GT
bf [35]

:[34]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y

:[35]
push.v self.x
pushi.e 1560
cmp.i.v GT
bf [37]

:[36]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[37]
push.v self.y
pushi.e 142
cmp.i.v LTE
bf [39]

:[38]
pushi.e 142
pop.v.i self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[39]
push.v self.y
pushi.e 142
cmp.i.v LTE
bf [41]

:[40]
push.v 82.y
pushi.e 360
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 3
pop.v.i self.con

:[44]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [51]

:[45]
push.v self.y
pushi.e 156
cmp.i.v LT
bf [47]

:[46]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y

:[47]
push.v self.x
pushi.e 1560
cmp.i.v GT
bf [49]

:[48]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[49]
push.v self.y
pushi.e 156
cmp.i.v GTE
bf [51]

:[50]
pushi.e 1799
pop.v.i self.sprite_index
pushi.e 156
pop.v.i self.y
pushi.e 4
pop.v.i self.con

:[51]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [56]

:[52]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.nottooclose
add.v.v
push.v 82.x
cmp.v.v GT
bf [54]

:[53]
push.v self.nottooclose
push.d 0.5
sub.d.v
pop.v.v self.nottooclose
pushi.e 999
conv.i.v
pushi.e 10
conv.i.v
push.v self.nottooclose
call.i clamp(argc=3)
pop.v.v self.nottooclose
push.v 82.x
push.v self.nottooclose
sub.v.v
pop.v.v self.x

:[54]
push.v self.x
pushi.e 180
cmp.i.v LTE
bf [56]

:[55]
pushi.e 5
pop.v.i self.con

:[56]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[57]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tenemy1
push.v self.tenemy1
pushi.e -9
pushenv [59]

:[58]
pushi.e 55
pop.v.i self.myencounter
pushi.e 1797
pop.v.i self.sprite_index
pushi.e 1799
pop.v.i self.touchsprite
pushi.e 1
pop.v.i self.radius
pushi.e 0
pop.v.i self.moveradius
pushi.e 9
pop.v.i self.pacetype
pushi.e 3
pop.v.i self.chasetype
pushi.e 1
pop.v.i self.alertskip
pushi.e 0
pop.v.i self.ignoresolid

:[59]
popenv [58]
call.i instance_destroy(argc=0)
popz.v

:[end]