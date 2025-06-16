.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 6
pop.v.i self.speed
pushi.e 0
pop.v.i self.timer
pushi.e 789
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 789.depth
pushi.e 2
sub.i.v
pop.v.v self.depth
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v 789.x
pushi.e 18
sub.i.v
pop.v.v self.x
b [4]

:[3]
push.v 789.x
pushi.e 18
add.i.v
pop.v.v self.x

:[4]
push.v 789.y
pushi.e 128
sub.i.v
pop.v.v self.y

:[end]