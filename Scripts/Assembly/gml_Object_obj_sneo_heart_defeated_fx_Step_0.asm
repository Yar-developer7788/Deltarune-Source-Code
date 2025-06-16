.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_angle
pushi.e 40
push.v self.timer
sub.v.i
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.v.v self.image_angle
push.v self.speed
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
pushi.e 0
pop.v.i self.speed

:[end]