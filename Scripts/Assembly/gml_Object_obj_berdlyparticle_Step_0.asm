.localvar 2 arguments

:[0]
push.v self.x
pushi.e -100
cmp.i.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
cmp.v.v GTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 6
cmp.i.v GT
bf [end]

:[5]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[end]