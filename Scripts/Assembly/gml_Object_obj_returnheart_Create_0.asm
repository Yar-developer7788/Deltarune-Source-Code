.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.burst
pushi.e 1
pop.v.i self.shift
pushi.e 1
pop.v.i self.image_alpha
pushi.e 8
pop.v.i self.flytime
push.v 372.x
pushi.e 10
add.i.v
pop.v.v self.distx
push.v 372.y
pushi.e 40
add.i.v
pop.v.v self.disty
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 840
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v 777.x
pop.v.v self.distx
push.v 777.y
pushi.e 110
sub.i.v
pop.v.v self.disty

:[5]
push.v self.disty
push.v self.distx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pop.v.v self.dist
push.v self.dist
push.v self.flytime
div.v.v
push.v self.disty
push.v self.distx
call.i move_towards_point(argc=3)
popz.v
push.i 68097
setowner.e
push.v self.flytime
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed

:[end]