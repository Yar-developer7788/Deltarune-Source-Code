.localvar 2 arguments

:[0]
push.v 514.image_angle
pop.v.v self.image_angle
push.v 514.image_xscale
pop.v.v self.image_xscale
push.v 514.image_yscale
pop.v.v self.image_yscale
push.v 514.x
pop.v.v self.x
push.v 514.y
pop.v.v self.y
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[2]
pushi.e 631
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [4]

:[3]
push.v 631.x
push.v 514.y
push.v 514.x
push.v 631.y
push.v 631.x
call.i point_direction(argc=4)
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v 631.x
push.v 631.y
push.v 514.y
push.v 514.x
push.v 631.y
push.v 631.x
call.i point_direction(argc=4)
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v 631.y

:[4]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[5]
popz.i

:[end]