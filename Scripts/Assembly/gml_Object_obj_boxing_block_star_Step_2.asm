.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.speed
push.d 0.4
sub.d.v
pop.v.v self.speed

:[2]
push.v self.timer
pushi.e 16
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 789
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v 789.x
pushi.e 18
sub.i.v
pop.v.v self.x
b [9]

:[8]
push.v 789.x
pushi.e 18
add.i.v
pop.v.v self.x

:[9]
push.v 789.y
pushi.e 128
sub.i.v
pop.v.v self.y

:[end]