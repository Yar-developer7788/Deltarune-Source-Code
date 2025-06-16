.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 585
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v 585.state
pushi.e 2
cmp.i.v EQ
bf [8]

:[3]
push.v self.x
push.v 585.x
push.v 585.mouthx
add.v.v
pushi.e 50
sub.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.y
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
push.v 585.y
push.v 585.mouthy
add.v.v
push.v self.y
sub.v.v
call.i clamp(argc=3)
add.v.v
pop.v.v self.y

:[5]
push.v self.x
push.v 585.x
push.v 585.mouthx
add.v.v
pushi.e 10
sub.i.v
cmp.v.v LT
bf [7]

:[6]
push.v 585.y
push.v 585.mouthy
add.v.v
push.v 585.x
push.v 585.mouthx
add.v.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.d -0.1
pop.v.d self.friction

:[7]
b [end]

:[8]
pushi.e 0
pop.v.i self.friction

:[end]