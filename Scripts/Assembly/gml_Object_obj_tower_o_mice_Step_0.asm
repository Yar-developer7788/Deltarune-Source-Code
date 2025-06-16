.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 1169.x
pushi.e 23
add.i.v
pushi.e 5
sub.i.v
pop.v.v self.x
push.v 1169.y
pushi.e 80
add.i.v
pop.v.v self.y

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 0.5
pop.v.d self.hspeed
pushi.e 2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
push.v self.hspeed
push.d 1.05
mul.d.v
pop.v.v self.hspeed
push.v self.vspeed
push.d 1.1
mul.d.v
pop.v.v self.vspeed
push.v self.y
pushbltn.v builtin.room_height
cmp.v.v GT
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]