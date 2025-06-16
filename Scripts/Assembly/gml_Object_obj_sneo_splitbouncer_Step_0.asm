.localvar 2 arguments
.localvar 25798 dir1 13105

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
push.v self.size
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.image_xscale
push.v self.size
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.image_yscale
push.v self.size
pop.v.v self.hp
pushi.e 1
pop.v.i self.init
push.v self.size
pushi.e 1
sub.i.v
pushi.e 2
conv.i.v
call.i power(argc=2)
pop.v.v self.speed
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v 872.y
push.v 872.x
pushi.e 60
conv.i.v
pushi.e -60
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction

:[3]
push.v self.size
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 6
pop.v.i self.shrinksize

:[5]
push.v self.size
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.destroyonhit
b [9]

:[7]
push.v self.size
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i self.shrinksize

:[9]
pushglb.v global.turntimer
pushi.e 45
cmp.i.v LT
bf [11]

:[10]
pushi.e 2
pop.v.i self.image_speed
pushi.e 255
pop.v.i self.image_blend
push.d 0.25
pop.v.d self.friction

:[11]
push.v self.breaking
pushi.e 0
cmp.i.v GT
bf [21]

:[12]
push.v self.breaking
push.e 1
sub.i.v
pop.v.v self.breaking
push.v self.breaking
pushi.e 0
cmp.i.v EQ
bf [20]

:[13]
pushi.e 676
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.size
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.size
push.v self.size
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size

:[15]
push.v self.size
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 675
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local.dir1
pushloc.v local.dir1
pushi.e 90
mul.i.v
pushi.e 45
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size
pushi.e 675
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local.dir1
pushi.e 2
conv.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pushi.e 90
mul.i.v
pushi.e 45
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size
b [19]

:[17]
push.v self.size
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 675
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local.dir1
pushloc.v local.dir1
pushi.e 90
mul.i.v
pushi.e 45
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size
pushi.e 675
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local.dir1
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pushi.e 90
mul.i.v
pushi.e 45
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size
pushi.e 675
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushloc.v local.dir1
pushi.e 2
add.i.v
pushi.e 4
mod.i.v
pushi.e 90
mul.i.v
pushi.e 45
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.size

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
exit.i

:[21]
push.v self.y
push.v 646.top
pushi.e 6
add.i.v
cmp.v.v LT
bf [23]

:[22]
pushi.e 90
conv.i.v
push.v self.direction
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.vspeed
pushi.e -1
mul.i.v
pop.v.v self.vspeed
push.v 646.top
push.v self.shrinksize
add.v.v
pop.v.v 646.top
b [end]

:[26]
push.v self.x
push.v 646.left
pushi.e 6
add.i.v
cmp.v.v LT
bf [28]

:[27]
pushi.e 180
conv.i.v
push.v self.direction
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.hspeed
pushi.e -1
mul.i.v
pop.v.v self.hspeed
push.v 646.left
push.v self.shrinksize
add.v.v
pop.v.v 646.left
b [end]

:[31]
push.v self.y
push.v 646.bottom
pushi.e 6
sub.i.v
cmp.v.v GT
bf [33]

:[32]
pushi.e 270
conv.i.v
push.v self.direction
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.vspeed
pushi.e -1
mul.i.v
pop.v.v self.vspeed
push.v 646.bottom
push.v self.shrinksize
sub.v.v
pop.v.v 646.bottom
b [end]

:[36]
push.v self.x
push.v 646.right
pushi.e 6
sub.i.v
cmp.v.v GT
bf [38]

:[37]
pushi.e 0
conv.i.v
push.v self.direction
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 90
cmp.i.v LT
b [39]

:[38]
push.e 0

:[39]
bf [end]

:[40]
push.v self.hspeed
pushi.e -1
mul.i.v
pop.v.v self.hspeed
push.v 646.right
push.v self.shrinksize
sub.v.v
pop.v.v 646.right

:[end]