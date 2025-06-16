.localvar 2 arguments

:[0]
push.d 0.2
pop.v.d self.friction
push.d 0.8
pop.v.d self.image_alpha
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.getdepth
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v 82.depth
pushi.e 100
add.i.v
pop.v.v self.depth

:[5]
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
push.v self.x
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.hspeed
push.d 0.5
conv.d.v
push.d -0.5
conv.d.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 0.5
conv.d.v
push.d -0.5
conv.d.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.image_angle
pushi.e -10
conv.i.v
pushi.e 10
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.image_angle
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [10]

:[6]
pushi.e 137
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [8]

:[7]
push.v self.getdepth
pushi.e 1
cmp.b.v EQ
b [9]

:[8]
push.e 0

:[9]
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y

:[13]
push.v self.y
pushbltn.v builtin.room_height
cmp.v.v GT
bf [15]

:[14]
push.v self.remy
pop.v.v self.y

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.lifecycle
cmp.v.v GTE
bf [17]

:[16]
push.v self.image_alpha
push.d 0.9
mul.d.v
pop.v.v self.image_alpha

:[17]
push.v self.image_alpha
push.d 0.05
cmp.d.v LT
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.y
push.v self.starty
pushi.e 20
sub.i.v
cmp.v.v LTE
bt [21]

:[20]
push.v self.timer
pushi.e 10
cmp.i.v GT
b [22]

:[21]
push.e 1

:[22]
bf [end]

:[23]
pushi.e 1
pop.v.b self.getdepth

:[end]