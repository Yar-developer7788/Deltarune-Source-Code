.localvar 2 arguments
.localvar 14318 _progress 6080
.localvar 14319 _dist 6081
.localvar 9196 __theta 6082

:[0]
push.v self.init
conv.v.b
not.b
bf [3]

:[1]
pushi.e 1
pop.v.b self.init
push.v self.direction
pushi.e 180
add.i.v
pushi.e 360
mod.i.v
pushi.e 15
add.i.v
pop.v.v self.start_angle
push.v self.middespawn
conv.v.b
bf [3]

:[2]
push.v self.speed
pop.v.v self.psuedo_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.b self.active
push.v self.depth
pop.v.v self.start_depth
push.v 872.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e -3
pop.v.i self.fader
push.v 872.x
pop.v.v self.x
push.v 872.y
pop.v.v self.y

:[3]
push.v self.middespawn
conv.v.b
bf [6]

:[4]
push.v self.traveldistance
push.v self.maxdistance
cmp.v.v GTE
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.spindir
pushi.e 0
cmp.i.v NEQ
bf [13]

:[7]
push.v self.depth
push.v self.start_depth
cmp.v.v NEQ
bf [9]

:[8]
push.v self.traveldistance
push.v self.maxdistance
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.start_depth
pop.v.v self.depth
pushi.e 1
pop.v.b self.active

:[12]
push.v self.traveldistance
push.v self.maxdistance
div.v.v
pop.v.v local._progress
pushloc.v local._progress
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e 150
mul.i.v
pop.v.v local._dist
push.v self.start_angle
pushloc.v local._progress
push.v self.spindir
mul.v.v
pushi.e 45
mul.i.v
add.v.v
pop.v.v local.__theta
push.v 872.x
pushloc.v local.__theta
pushloc.v local._dist
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v 872.y
pushloc.v local.__theta
pushloc.v local._dist
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
b [22]

:[13]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [22]

:[14]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.updateimageangle
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
push.v self.direction
pop.v.v self.image_angle

:[end]