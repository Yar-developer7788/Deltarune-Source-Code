.localvar 2 arguments

:[0]
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1244
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1244.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[2]
push.v self.x
pushi.e 46
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[end]