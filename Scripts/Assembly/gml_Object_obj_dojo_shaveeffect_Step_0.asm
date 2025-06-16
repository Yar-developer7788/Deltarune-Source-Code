.localvar 2 arguments

:[0]
push.v self.wait
conv.v.b
bf [2]

:[1]
exit.i

:[2]
push.v self.friction
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.speed
push.v self.end_speed
cmp.v.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.end_speed
pop.v.v self.speed
pushi.e 0
pop.v.i self.friction

:[7]
push.v self.friction
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v self.sparkle_timer
push.e 1
add.i.v
pop.v.v self.sparkle_timer
push.v self.sparkle_timer
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.image_speed

:[10]
push.v self.image_index
push.v self.image_number
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]