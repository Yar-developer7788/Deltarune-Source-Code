.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.gravity
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.d 0.5
pop.v.d self.gravity
pushi.e 7
pop.v.i self.spin

:[5]
push.v self.image_angle
push.v self.spin
add.v.v
pop.v.v self.image_angle

:[end]