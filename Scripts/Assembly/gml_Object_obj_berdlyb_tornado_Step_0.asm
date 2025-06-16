.localvar 2 arguments
.localvar 14319 _dist 6526
.localvar 9196 __theta 6527

:[0]
push.v self.init
conv.v.b
not.b
bf [2]

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

:[2]
push.v self.middespawn
conv.v.b
bf [5]

:[3]
push.v self.traveldistance
push.v self.maxdistance
cmp.v.v GTE
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.spindir
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.v 872.y
push.v 872.x
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v local._dist
push.v self.start_angle
pushloc.v local._dist
pushi.e 103
conv.i.d
div.d.v
push.v self.spindir
mul.v.v
push.d 22.5
mul.d.v
add.v.v
push.v self.spindir
neg.v
push.v self.timer
mul.v.v
pushi.e 3
conv.i.d
div.d.v
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
b [16]

:[7]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [16]

:[8]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.updateimageangle
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.direction
pop.v.v self.image_angle

:[end]